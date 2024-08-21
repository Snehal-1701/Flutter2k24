// for memory management - (local parameter)

class Player {
  int? jerNo;
  String? pName;
  double? sal;

  Player(this.jerNo, this.pName, this.sal);

  void playerInfo() {
    print(jerNo);
    print(pName);
    print(sal);
  }
}

void main() {
  Player obj = Player(18, "Virat", 7.0);
  obj.playerInfo();

  Player obj1 = Player(18, "Virat", 7.0);
  obj1.playerInfo();
}