void main() {
  String name = 'Abdulazeez';
  int age = 23;
  age--;

  if (age < 0) {
    print("Error: Age can’t be negative.");
    return;
  }

  String message;
  if (age < 13) {
    message = "You’re a child.";
  } else if (age < 18) {
    message = "You’re a teenager.";
  } else if (age < 60) {
    message = "You’re an adult.";
  } else {
    message = "You’re a senior.";
  }

  print("Hello, $name! You are $age years old. $message");
  
}
