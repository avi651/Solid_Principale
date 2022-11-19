void main() {
  final service = Service();
  service.connection = MySqlConnection();
  service.attach();
}

abstract class ConnectionInterface {
  void connect();
}

class Service {
  ConnectionInterface? connection;

  void attach() {
    connection!.connect();
  }
}

class MyDBConnection implements ConnectionInterface {
  @override
  void connect() {}
}

class MySqlConnection implements ConnectionInterface {
  @override
  void connect() {}
}
