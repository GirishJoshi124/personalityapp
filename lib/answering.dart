import 'package:flutter/material.dart';

class Answering extends StatelessWidget {

  final Function selectHandler;
  final String answerText;
  Answering(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
     color: Colors.red,
     

      child: RaisedButton(
        elevation: double.maxFinite,
        color: Colors.blueAccent,
        textColor: Colors.white,
          child: Text(answerText,
          style: TextStyle(fontSize: 15),
        ),
          
          onPressed: selectHandler,
        ),
    );
  }
}