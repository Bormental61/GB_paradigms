import math


class Shape:
    def get_perimeter(self):
        pass

    def get_area(self):
        pass


class Circle(Shape):
    def __init__(self, radius):
        self.radius = radius

    def get_perimeter(self):
        return 2 * math.pi * self.radius

    def get_area(self):
        return math.pi * self.radius ** 2


class Triangle(Shape):
    def __init__(self, a, b, c):
        self.a, self.b, self.c = a, b, c

    def get_perimeter(self):
        return self.a + self.b + self.c

    def get_area(self):
        p = self.get_perimeter() / 2
        return math.sqrt(p * (p - self.a) * (p - self.b) * (p - self.c))


cir = Circle(13)
tri = Triangle(7, 8, 9)
print('Circle R13 perimeter = ', cir.get_perimeter(), 'Circle R13 area = ', cir.get_area())
print('Triangle "tri" perimeter = ', tri.get_perimeter(), 'Triangle "tri" area = ', tri.get_area())
