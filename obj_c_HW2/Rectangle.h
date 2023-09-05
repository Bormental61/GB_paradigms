#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : Figure {
@private CGFloat _sideA;
@private CGFloat _sideB;
}

-(instancetype) init: (CGFloat)sideA sideB: (CGFloat)sideB;
-(instancetype) init: (CGFloat)side;

@end