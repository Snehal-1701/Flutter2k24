import 'package:flutter/material.dart';

class ShoeScreen extends StatefulWidget {
  const ShoeScreen({super.key});

  @override
  State<ShoeScreen> createState() => _ShoeScreen();
}

class _ShoeScreen extends State<ShoeScreen> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    print("Height : ${MediaQuery.of(context).size.height}");
    print("Width : ${MediaQuery.of(context).size.width}");

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shoes",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 109, 44, 248),
          ),
        ),
        backgroundColor: Colors.white,
        actions: const [
          Icon(
            Icons.shopping_cart,
            color: Color.fromARGB(255, 109, 44, 248),
            size: 40,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          Container(
            height: 392,
            child: Image.network(
              "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
              fit: BoxFit.cover,
            ),
          ),

          // space
          const SizedBox(
            height: 10,
          ),
          // Text
          const Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                'Nike Air Force 1 "07',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),

          // space
          const SizedBox(
            height: 10,
          ),

          // Buttons
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 15,
                ),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 109, 44, 248),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Text(
                  "SHOES",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 15,
                ),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 109, 44, 248),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Text(
                  "FOOTWEAR",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),

          // space
          const SizedBox(
            height: 10,
          ),

          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Container(
                width: 362,
                child: const Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "),
              ),
            ],
          ),

          // space
          const SizedBox(
            height: 10,
          ),

          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              const Text(
                "Quantity ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: (){
                  if(count > 0) {
                    count--;
                  }
                  setState((){});
                },
                child: const Icon(
                  Icons.remove,
                ),
                // child: const Text(
                //   "-",
                //   style: TextStyle(
                //     fontSize: 20,
                //     fontWeight: FontWeight.w600,
                //   ),
                // ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Text(
                  "$count",
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  count++;
                  setState((){});
                },
                child: const Icon(
                  Icons.add,
                ),
              ),
            ],
          ),

          // space
          const SizedBox(
            height: 10,
          ),

          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              SizedBox(
                width: 362,
                child: ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      Color.fromARGB(255, 109, 44, 248),
                    ),
                  ),
                  child: const Text(
                    "PURCHASE",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
