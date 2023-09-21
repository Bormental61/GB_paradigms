#import "ViewController.h"
#import "Load.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.load = [Load new];
    _searchBar.delegate = self;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    [self performLoadingSearchResultsFromYandex: searchBar.text];
}

- (void)performLoadingWithGETRequest {
    [self.load performGETRequestForURL:@"https://postman-echo.com/get" arguments:@{
        @"first": @"first value",
        @"second": @"second value"
    } completion:^(NSDictionary * dictionary, NSError * error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"%@", [NSString stringWithFormat:@"Error: %@", error]);
                return;
            }
            NSLog(@"%@", [NSString stringWithFormat:@"%@", dictionary]);
        });
    }];
}

- (void)performLoadingWithPOSTRequest {
    [self.load performPOSTRequestForURL:@"https://postman-echo.com/post" arguments:@{
        @"first": @"first value",
        @"second": @"second value"
    } completion:^(NSDictionary * dictionary, NSError * error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"%@", [NSString stringWithFormat:@"Error: %@", error]);
                return;
            }
            NSLog(@"%@", [NSString stringWithFormat:@"%@", dictionary]);
        });
    }];
}

- (void)performLoadingSearchResultsFromYandex: (NSString *) searchQuery {
    [self.load performGETRequestForURL:@"https://yandex.ru/search/" arguments:@{
        @"text": searchQuery
    } completionWithHTML:^(NSString * content, NSError * error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"%@", [NSString stringWithFormat:@"Error: %@", error]);
                return;
            }
            [self->_webView loadHTMLString:content baseURL:nil];
        });
    }];
}

@end