class Animal {
  void makeSound() {
    print("Animal makes sound");
  }
}

class Dog extends Animal {
  void makeSound() {
    print("Dog barks");
  }
}

class Cat extends Animal {
  void scratch() {
    print("cat scratches");
  }
}

void main() {
  Animal obj = Dog();
  obj.makeSound();

  Cat obj2 = Animal();
  obj2.scratch();
}