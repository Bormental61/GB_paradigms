#import "Doctor.h"
#import "Pill.h"

@implementation Doctor

- (void)givePill:(nonnull NSNumber*)pillID {
    if ([_delegate respondsToSelector:@selector(eatPill:)]) {
        if ([_delegate eatPill: pillID]) {
            NSLog(@"Giving the pill %@", pillID);
        } else {
            NSLog(@"Wrong pill %@", pillID);
        }
    } else {
        NSLog(@"Not giving the pill %@", pillID);
    }
}

@end