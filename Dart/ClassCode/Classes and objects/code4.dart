// Classes and objects

class Player {
  // properties
  int? jerNo;
  String? pName;

  // constructor
  Player() {
    jerNo = 18;
    pName = "Virat";
  }

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