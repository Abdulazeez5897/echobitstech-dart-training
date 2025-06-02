class User {
  String name;
  String email;

  User(this.name, this.email);

  void introduce() {
    print('Hi, I’m $name. Contact: $email.');
  }
}

class AdminUser extends User {
  AdminUser(String name, String email) : super(name, email);

  @override
  void introduce() {
    print('Hi, I’m $name (Admin). You can reach me at $email.');
  }
}

class RegularUser extends User {
  RegularUser(String name, String email) : super(name, email);

  @override
  void introduce() {
    print('Hey, I’m $name (Regular User). My contact: $email.');
  }
}

void main() {

  List<User> users = [
    AdminUser('Saleem', 'saleem.admin@service.com'),
    AdminUser('George', 'teamleads@service.com'),
    RegularUser('Amrah', 'amrah@gmail.com'),
    RegularUser('Usman', 'usman@gmail.com'),
  ];

  for (dynamic user in users) {
    user.introduce();
  }
}
