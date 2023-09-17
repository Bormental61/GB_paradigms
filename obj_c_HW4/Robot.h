#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MoveSide){
    MoveSideUp = 0,
    MoveSideDown = 1,
    MoveSideLeft = 2,
    MoveSideRight = 3,
    MoveSideStop = 4
};

NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject
@property (nonatomic, readwrite) CGPoint coordinates;
@property (nonatomic, copy, nullable) MoveSide (^path)(NSString*);
- (void) run: (MoveSide) direction;
- (void) jump: (CGPoint (^)(CGPoint))moveTo;
- (void) print;
@end

NS_ASSUME_NONNULL_END