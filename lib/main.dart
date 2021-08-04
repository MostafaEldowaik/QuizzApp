import 'package:flutter/material.dart';
import 'package:uyuyuyflutter_app/quiz%20App.dart';
import 'package:uyuyuyflutter_app/result.dart';
import 'quetation.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}
Color w=Colors.white;
Color b=Color(0xff121212);
Color appDark = Color(0xff1f1f1f);
Color appLight = Color(0xff6200ee) ;
Color bodydark = Color(0xff1e1e1e);
Color bodylight = Color(0xffffffff);
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool isSwatched=false;
  int totalScore = 0;
  int quetionIndex = 0;
  int num0 = 0, num1 = 1, num2 = 2;

  void restertApp() {
    setState(() {
      quetionIndex = 0;
      totalScore = 0;
      num0 = 0;
      num1 = 0;
      num2 = 0;
    });
  }

  void AnswerQuetion(Score) {
    if (quetionIndex == 0) num0 = Score;
    else if (quetionIndex == 1) num1 = Score;
    else if (quetionIndex == 2) num2 = Score;
    totalScore += Score;
    setState(() {
      quetionIndex += 1;

    });
  }

  final List<Map<String, Object>> TextQuetion = [
    {
      "TextQuetion": "What\'s your fivorite colors ?",
      "answers": [
        {'Text': 'blue', 'score': 10},
        {'Text': 'black', 'score': 20},
        {'Text': 'green', 'score': 30},
        {'Text': 'red', 'score': 40}
      ]
    },
    {
      "TextQuetion": "What\'s your fivorite animal ?",
      "answers": [
        {'Text': 'lion', 'score': 10},
        {'Text': 'cat', 'score': 20},
        {'Text': 'dog', 'score': 30},
        {'Text': 'cow', 'score': 40}
      ]
    },
    {
      "TextQuetion": "What\'s your fivorite food ?",
      "answers": [
        {'Text': 'football', 'score': 10},
        {'Text': 'tenis', 'score': 20},
        {'Text': 'basketball', 'score': 30},
        {'Text': 'yoga', 'score': 40}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: isSwatched?appDark:appLight,
          title: Text("Quiz App",style: TextStyle(color:Colors.white),),
          actions: <Widget>[
            Switch(
              value: isSwatched,

              onChanged: (value){
                setState(() {
                  isSwatched=value;
                  if(isSwatched==true){b=Colors.white;w=Colors.black;}
                  if(isSwatched==false){b=Colors.black;w=Colors.white;}

                });
              },
              activeColor: appLight,
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.white,
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          color: w,
            child: quetionIndex < TextQuetion.length
                ? QuizApp(TextQuetion, quetionIndex, AnswerQuetion , isSwatched?bodydark:bodylight ,isSwatched?Colors.white:Colors.black)
                : Result(restertApp, totalScore)),
        floatingActionButton: FloatingActionButton(
          backgroundColor: appLight,
            child: Icon(Icons.arrow_back_outlined,color: w,size: 40,),
            onPressed: () {
              if (quetionIndex == 1) totalScore -= num0;
              if (quetionIndex == 2) totalScore -= num1;
              if (quetionIndex == 3) totalScore -= num2;
              setState(() {
                if (quetionIndex > 0) {
                  quetionIndex--;
                }
              });
            }),
      ),
    );
  }
}
