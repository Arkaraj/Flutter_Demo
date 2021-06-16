class User {
  int id = 0;
  String name = "";
  String password = "";
  int age = 0;

  User(int id, String name, String pswd, int age) {
    this.id = id;
    this.name = name;
    this.password = pswd;
    this.age = age;
    print("Created new User");
  }

  void getDetails() {
    print("User name: $name, user/admin age is: ${this.age}");
  }
}

class Admin extends User {
  bool isAdmin = true;

  Admin(int id, String name, String pswd, int age) : super(id, name, pswd, age);

  void checkAdmin() {
    if (isAdmin) {
      print("Is Admin");
    } else {
      print("Not an admin");
    }
  }
}

// Driver function
void main() {
  print(sayHello("Dart"));
  var userid = 1;
  User arkaraj = new User(userid, "Arkaraj", "test1234", 19);
  Admin kraajar = new Admin(1001, "Kraajar", "xyz123", 60);
  arkaraj.getDetails();
  kraajar.getDetails();
  kraajar.checkAdmin();

  List<String> users = [
    "arkaraj",
    "flutter_dev",
    "node_dev",
    "react_dev",
    "ts-graphql_dev"
  ];
  // users.asMap();

  users.add("sql_dev");
  users.remove("flutter_dev");

  print(users);
}

// Arrow function types in dart, one line return
String sayHello(String name) => "Hello, " + name;
