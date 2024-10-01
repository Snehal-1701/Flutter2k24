import "package:flutter/material.dart";

class Column1 extends StatelessWidget {
  const Column1({super.key});

  @override 
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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