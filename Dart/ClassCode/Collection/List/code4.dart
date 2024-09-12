// Properties of List

void main() {
  List player = ["Virat", "Rohit", "MSD", "MSD"];
  print(player);

  print(player.runtimeType);

  print(player.first);
  print(player.last);
  print(player.length);
  print(player.isEmpty);
  print(player.isNotEmpty);
  print(player.reversed);
  // print(player.single);                //Exception

  List player2 = ["Virat"];
  print(player2.single);
}