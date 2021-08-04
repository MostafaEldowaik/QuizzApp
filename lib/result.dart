import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
  final q;
  final int resultScore;
  Result(this.q,this.resultScore);
  String get resultPharse{
    String reslutText;
    if (resultScore>=70){
      reslutText="you are awosome !";
    }else if(resultScore<=30){
     reslutText="pretty likable";
    }else{
      reslutText="you are bad";
    }


    return reslutText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "your score is$resultScore",
            style: TextStyle(
                color:b, fontSize: 30, fontWeight: FontWeight.bold,),
            textAlign: TextAlign.center,
          ),
          Text(
            resultPharse,
            style: TextStyle(
                color: b, fontSize: 45, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text("Restart The App",style: TextStyle(color: Colors.blue,fontSize: 30),),
            onPressed: q,
          ),
        ],
      ),
    );
  }
}
