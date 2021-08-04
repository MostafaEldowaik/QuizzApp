import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final  String AnswerText;
  final Function x;
  final color;
  final textColor ;
  Answer(this.x,this.AnswerText,this.color,this.textColor
      );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        elevation: 6.0,

        child: Container(
             decoration: BoxDecoration(borderRadius:  BorderRadius.circular(30.0),color: Colors.transparent,
             ),
          height: 90.0,
          width: double.infinity,
          child:ElevatedButton(
            //color
           style: ButtonStyle(
             foregroundColor: MaterialStateProperty.all<Color>(textColor) ,
             backgroundColor: MaterialStateProperty.all<Color>(color)
           ),
           // textColor: textColor,
            child: Text(AnswerText, style: TextStyle(fontSize: 30),
            ),
            onPressed: x,
          ),
        ),
      ),
    );
  }
}
