// Properties of List

// 1. first
// 2. last
// 3. isEmpty
// 4. isNotEmpty
// 5. length
// 6. single
// 7. reversed

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