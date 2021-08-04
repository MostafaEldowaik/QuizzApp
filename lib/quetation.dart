import 'package:flutter/material.dart';
import 'main.dart';

class Quetation extends StatelessWidget {
  final String TextQuetion;
Quetation(this.TextQuetion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            TextQuetion ,
            style: TextStyle(color:b,fontSize: 30,fontWeight:FontWeight.bold),
            textAlign: TextAlign.center,
          ),

        ],
      ),
    );
  }
}
