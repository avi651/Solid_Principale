void main() {
  Rectangle fail = Square(10);
  fail.width = 4;
  fail.height = 8;
  print(fail.height);
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
