#import "Patient.h"


@implementation Patient

- (bool)eatPill:(NSNumber *)pillID {
    NSLog(@"eat pill %@", pillID);
    return true;
}

@end