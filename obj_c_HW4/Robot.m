#import "Robot.h"


@implementation Robot
- (id)init {
    if (self = [super init]) {
        self.coordinates = CGPointMake(0, 0);
    }
    return self;
}
- (void)run:(MoveSide)direction {
    if (direction == MoveSideUp) {
        _coordinates.y++;
    } else if (direction == MoveSideDown) {
        _coordinates.y--;
    } else if (direction == MoveSideLeft) {
        _coordinates.x--;
    } else if (direction == MoveSideRight) {
        _coordinates.y++;
    }
    [self print];
}
- (void)print {
    NSLog(@"Coordinates: %f, %f", _coordinates.x, _coordinates.y);
}

- (void)jump:(nonnull CGPoint (^)(CGPoint))moveTo {
    _coordinates = moveTo(_coordinates);
    [self print];
}

@end