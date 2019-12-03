import 'package:flutter/material.dart';

class Questioning extends StatelessWidget {
  final  String ques;

  Questioning(this.ques);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20.0,top: 20.0),
      color: Colors.red[200],
      child: Text(ques, 
      style: TextStyle(fontSize: 30),

      textAlign: TextAlign.center,
      ),
    );
  }
}