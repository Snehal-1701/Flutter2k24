import "package:flutter/material.dart";

class Row6 extends StatelessWidget {
  const Row6({super.key});

  @override 
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.amber,
          ),
        ],
        
      ),
    );
  }
}