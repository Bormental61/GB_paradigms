/*
1. Решить квадратные уравнения:
x^2 – 8x + 12 = 0,
12x^2 – 4x + 2 = 0,
x^2 – 100x - 2 = 0
(заменять константы в коде).

2. Создать программу, которая находит большее число среди 3-х чисел.
*/

#import <Foundation/Foundation.h>

void quadEq(double a, double b, double c) {
    double d = pow(b, 2) - 4 * a * c;
    if (d > 0) {
        double res1 = (-b-sqrt(d)) / 2 * a;
        double res2 = (-b+sqrt(d)) / 2 * a;
        NSLog(@"%f, %f", res1, res2);
    } else if (d == 0) {
        double res = -b / 2 * a;
        NSLog(@"%f", res);
    } else {
        NSLog(@"Корней для данного уровнения нет");
    }
}

void maxNum(double a, double b, double c) {
    double max = a;
    if (b > max) max = b;
    if (c > max) max = c;
    NSLog(@"Среди %f, %f, %f большее %f", a, b, c, max);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Корни уровнения x^2 - 8x + 12 = 0:");
        quadEq(1, -8, 12);
        NSLog(@"");
        NSLog(@"Корни уровнения 12x^2 - 4x + 2 = 0:");
        quadEq(12, -4, 2);
        NSLog(@"");
        NSLog(@"Корни уровнения x^2 - 100x - 12 = 0:");
        quadEq(1, -100, -2);
        NSLog(@"");
        maxNum(27, 19, 48);
    }
    return 0;
}