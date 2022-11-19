void main() {
  Rectangle fail = Square(10);
  fail.width = 4;
  fail.height = 8;
  print(fail.height);

  final square = Sq();
  square.setWidth(20);
  print(square.width);
}

// Liskov Principle
class Rectangle {
  double? width;
  double? height;

  Rectangle(this.width, this.height);
}

class Square extends Rectangle {
  Square(double length) : super(length, length);
}

// Liskov

class Shape {
  num? _width;
  num? _height;
}

class Sq implements Shape {
  num? _height;
  num? _width;
  void setWidth(num value) {
    this._width = value;
  }

  get height => _height;
  get width => _width;
}

class Rect implements Shape {
  num? _width;
  num? _height;

  void setWidth(num value) {
    this._width = value;
  }

  void setHeight(num value) {
    this._height = value;
  }

  get height => _height;
  get width => _width;
}
