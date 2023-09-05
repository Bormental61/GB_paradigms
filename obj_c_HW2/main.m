/*
1. Создать абстрактный класс Figure с методами вычисления площади и периметра, 
а также методом, выводящим информацию о фигуре на экран.

2. Создать производные классы: Rectangle (прямоугольник), Circle (круг), Triangle (треугольник) 
со своими методами вычисления площади и периметра.

3. Создать массив n-фигур и вывести полную информацию о фигурах на экран.
*/

#import <Foundation/Foundation.h>
#import "Figure.h"
#import "Rectangle.h"
#import "Circle.h"
#import "Triangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Figure *figures[3];
        figures[0] = [[Rectangle alloc]init:5 sideB:3];
        figures[1] = [[Circle alloc]init:5];
        figures[2] = [[Triangle alloc]init:5 sideB:6 sideC:4];
        int i;
        for (i = 0; i < 3; i++) {
            [figures[i] printInfo];
        }
    }
    return 0;
}