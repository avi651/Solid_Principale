import 'package:flutter/material.dart';

void main() {
  AreaCalculator().shape?.area();
}

// Open Closed Principle
abstract class Shape {
  void area();
}

class Circle implements Shape {
  num? radius;

  @override
  void area() {
    print("PI r2");
  }
}

class Square implements Shape {
  num? length;

  @override
  void area() {
    print("4 * r");
  }
}

class Rectangle implements Shape {
  num? length;
  num? height;

  @override
  void area() {
    print('area is rectangle');
  }
}

class AreaCalculator {
  Shape? shape;
  calculate() {
    shape?.area();
  }
}
