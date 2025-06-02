class User {
  String name;
  String email;
  int age;

  User(this.name, this.email, this.age);

  void introduce() {
    print('Hi, I am $name. You can reach me at $email. I am $age years old.');
  }
}

void main() {
  User user1 = User('Abbas', 'abbas@gmail.com', 25);
  User user2 = User('George', 'george@gmail.com', 30);
  User user3 = User('Saleeeem', 'saleeeem@gmail.com', 28);

  user1.introduce();
  user2.introduce();
  user3.introduce();
}
