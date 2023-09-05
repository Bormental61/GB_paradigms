#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Triangle : Figure{
@private CGFloat _sideA;
@private CGFloat _sideB;
@private CGFloat _sideC;
}

-(instancetype) init: (CGFloat)sideA sideB: (CGFloat)sideB sideC: (CGFloat)sideC;

@end

NS_ASSUME_NONNULL_END