#import "ViewController.h"
#import "Robot.h"

@interface ViewController ()

@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)coder {
    if (self = [super initWithCoder:coder]) {
        self.userDefaults = [NSUserDefaults standardUserDefaults];
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.userDefaults = [NSUserDefaults standardUserDefaults];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    Robot *robot = [[Robot alloc] init:@"Robot" x:5 y:4];
    NSError *error;
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:robot requiringSecureCoding:NO error:&error];
    [self.userDefaults setObject:data forKey:@"robot"];

    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSURL *url = [fileManager URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask].firstObject;
    NSURL *newFolderUrl = [url URLByAppendingPathComponent:@"my-new-folder"];
    NSURL *testData = [newFolderUrl URLByAppendingPathComponent:[NSString stringWithFormat:@"%@.txt", robot.name]];
    NSData *file = [NSKeyedArchiver archivedDataWithRootObject:robot requiringSecureCoding:NO error:&error];
    if ([fileManager createDirectoryAtURL:newFolderUrl withIntermediateDirectories:YES attributes:nil error:nil]) {
        [fileManager createFileAtPath:testData.path contents:file attributes:nil];
    }

    if ([fileManager fileExistsAtPath:testData.path]) {
        NSData *dataFromFile = [fileManager contentsAtPath:testData.path];
        Robot *robotFromFile = [NSKeyedUnarchiver unarchivedObjectOfClass:[Robot class] fromData:dataFromFile error:&error];
        NSLog(@"%@", [robotFromFile info]);
        NSLog(@"%@", error);
        self.textViewForFile.text = [robotFromFile info];
        [fileManager removeItemAtPath:testData.path error:nil];
    }
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSData *data = [self.userDefaults objectForKey:@"robot"];
    Robot *robot = [NSKeyedUnarchiver unarchivedObjectOfClass:[Robot class] fromData:data error:NULL];
    self.textView.text = [robot info];
    [self resetUserDefaults];
}

- (void)resetUserDefaults {
    NSDictionary *dict = [self.userDefaults dictionaryRepresentation];
    for (id key in dict) {
        [self.userDefaults removeObjectForKey:key];
    }
    [self.userDefaults synchronize];
}

@end