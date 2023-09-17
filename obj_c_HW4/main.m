/*
Реализовать класс робота (Robot). В классе должны быть свойства координаты x, y (по умолчанию в начале 0, 0) и метод run.
Метод принимает блок, в зависимости от сообщения в блоке (up, down, left, right)
робот движется в соответствующем направлении (изменяется его текущая координата).
Сообщения в блоках возвращается только в виде строк (up, down, left, right).
Продемонстрировать движение робота по прямоугольной системе координат.
*/

#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Robot *robot = [[Robot alloc]init];
        [robot print];

        robot.path = ^MoveSide(NSString * direction) {
            if ([direction isEqual: @"up"]) {
                return MoveSideUp;
            } else if ([direction isEqual: @"down"]) {
                return MoveSideDown;
            } else if ([direction isEqual: @"left"]) {
                return MoveSideLeft;
            } else if ([direction isEqual: @"right"]) {
                return MoveSideRight;
            } else return MoveSideStop;
        };

        [robot run:robot.path(@"down")];
        [robot run:robot.path(@"down")];
        [robot run:robot.path(@"left")];
        [robot run:robot.path(@"wait")];

        [robot jump:^CGPoint(CGPoint from){
            return CGPointMake(from.x - 13, from.y + 13);
        }];
    }
    return 0;
}