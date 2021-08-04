import 'package:flutter/material.dart';
import 'answer.dart';
import 'quetation.dart';
class QuizApp extends StatelessWidget {
 final List<Map<String, Object>> TextQuetion;
 final int quetionIndex;
 final Function AnswerQuetion;
 final color ;
 final textColor;
 QuizApp(this.TextQuetion,this.quetionIndex,this.AnswerQuetion ,this.color,this.textColor
     );

  @override
  Widget build(BuildContext context) {
    return  Container(


      padding: EdgeInsets.all(20.0),
      child: ListView(

        children: [
          Quetation(TextQuetion[quetionIndex ]['TextQuetion']),
          ...(TextQuetion[quetionIndex]['answers'] as List <Map<String,Object>>).map((answer){
            return Container(child: Answer(()=>(AnswerQuetion(answer['score'])), answer['Text'],color,textColor
            ));
          }).toList(),

        ],
      ),
    );
  }
}
