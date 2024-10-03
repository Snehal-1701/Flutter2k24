import 'dart:io';

Future<String> preparingOrder(String food) {
  print("Preparing...");
  return Future.delayed(
    Duration(
      seconds: 5,
    ),
    () => food,
  );
}

Future<String> placeOrder() async{
  print("What you want order ??");

  String order = stdin.readLineSync()!;

  String readyFood = await preparingOrder(order);

  return "Your order : $readyFood";
}
void main() async{
  print("Start Zomato");

  String order = await placeOrder();
  print(order);

  print("Close Zomato app");
}