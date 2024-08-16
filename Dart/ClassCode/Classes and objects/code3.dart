// Classes and objects

class Player {
  // properties
  int jerNo = 10;
  String pName = "Snehal";

  // methods
  void playerInfo() {
    print(jerNo);
    print(pName);
  }
}

void main() {
  Player obj = new Player();
  obj.playerInfo();
  print(obj.jerNo);
  print(obj.pName);
}