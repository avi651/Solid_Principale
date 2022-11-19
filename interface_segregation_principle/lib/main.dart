void main() {}

abstract class Worker {
  void work();
  void sleep();
}

class Human implements Worker {
  @override
  void sleep() {
    print("I need 10 hours per night...");
  }

  @override
  void work() {
    print("I do a lot of work");
  }
}

class Robot implements Worker {
  @override
  void sleep() {}

  @override
  void work() {
    print("I always work");
  }
}

abstract class Worker1 {
  void work1();
}

abstract class Sleeper1 {
  void sleep1();
}

class Human1 implements Worker1, Sleeper1 {
  void work1() => print("I do a lot of work");
  void sleep1() => print("I need 10 hours per night...");
}

class Robot1 implements Worker1 {
  void work1() => print("I always work");
}
