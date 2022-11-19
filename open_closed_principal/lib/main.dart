import 'package:flutter/material.dart';

void main() {
  Rectangle rect = Rectangle(12.0, 18.0);
  Area a = Area(rect);
  a.calculateArea();
  Shape sq = Square(12.0);
  Area area = Area(sq);
  area.calculateArea();
}

// Another example
abstract class Shape {
  double calculateArea();
}

class Area {
  final Shape shape;
  Area(this.shape);

  void calculateArea() {
    print(shape.calculateArea());
  }
}

class Rectangle implements Shape {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

class Square implements Shape {
  final double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

class Triangle implements Shape {
  final double base;
  final double height;

  Triangle(this.base, this.height);

  @override
  double calculateArea() {
    return 0.5 * base * height;
  }
}
