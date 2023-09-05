#import "Triangle.h"

@implementation Triangle

- (instancetype)init:(CGFloat)sideA sideB:(CGFloat)sideB sideC:(CGFloat)sideC {
    self = [super init];
    if (self) {
        _sideA = sideA;
        _sideB = sideB;
        _sideC = sideC;
    }
    return self;
}

- (CGFloat) calcArea {
    CGFloat p = (_sideA + _sideB + _sideC) / 2;
    return sqrt(p * (p - _sideA) * (p - _sideB) * (p - _sideC));
}

- (CGFloat) calcPerimeter {
    return _sideA + _sideB + _sideC;
}

@end