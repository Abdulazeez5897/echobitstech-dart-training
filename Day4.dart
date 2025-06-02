abstract class Animal {
  void speak();
}

class Dog extends Animal {
  @override
  void speak() {
    print('Woof!');
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print('Meow!');
  }
}

class Bird extends Animal {
  @override
  void speak() {
    print('Tweet!');
  }
}

void main() {
  List<Animal> animals = [
    Dog(),
    Cat(),
    Bird(),
    Dog(),
    Cat(),
  ];

  for (dynamic creature in animals) {
    creature.speak();
  }
}
