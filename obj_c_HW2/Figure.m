#import "Figure.h"

@implementation Figure

- (CGFloat)calcArea {
    return 0;
}

- (CGFloat)calcPerimeter {
    return 0;
}

- (void)printInfo {
    CGFloat area = [self calcArea];
    CGFloat perimeter = [self calcPerimeter];
    NSLog(@"Area: %f Perimeter: %f", area, perimeter);
}

@end