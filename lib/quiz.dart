import 'package:flutter/material.dart';

import './answering.dart';
import './questioning.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> ques;
  final int index;
  final Function answerques;

  Quiz({
    @required this.index,
    @required this.ques,
    @required this.answerques
  });

  @override
  Widget build(BuildContext context) {
    return 
      
      Column(children: <Widget>[
        Questioning(ques[index]['question']
        ),

      ...(ques[index]['options'] as List<Map<String,Object>>).map((option){
        
        return Answering(() => answerques(option['score']), option['text']); 
      }).toList(),

      ],
      );
  }
}