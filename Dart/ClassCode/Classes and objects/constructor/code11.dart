// constant constructor

/*
constructor that creates constant constructor.
improves performance of program.
rules : 
-all properties of the class must be final.
-it does not have any body.
-only class containing const constructor is initialized using const keyword.
*/

class Demo {
  final int? data;
  final String? name;

  const Demo(this.data, this.name);
}
//constant constructor object should be declared with const keyword
void main() {
  Demo obj1 = Demo(10, "Hello");
  print(identityHashCode(obj1));

  Demo obj2 = Demo(10, "Hello");
  print(identityHashCode(obj2));
}