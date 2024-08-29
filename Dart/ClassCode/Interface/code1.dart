class Parent1 {

  void fun() {
    print("In fun-parent1");
  }
}
class Parent2 {

  void fun() {
    print("In fun-parent1");
  }
}

class Child extends Parent1, Parent2 {

}

void main() {

}

/*Error: Each class definition can have at most one extends clause.
Try choosing one superclass and define your class to implement (or mix in) the others.
class Child extends Parent1, Parent2 {
*/