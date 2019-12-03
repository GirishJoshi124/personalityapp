import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{

int _index = 0;
int _totalScore = 0;

  void answerques(int score) {

   

    setState(() {
       _index++;
    });
 
    print(_index);
     _totalScore += score;
  }

  void resetQuiz()
  {
    setState(() {
      _totalScore =0;
      _index = 0;
    });

  }
 
  @override

  Widget build(BuildContext context) {

           final _ques = const [
        {'question':'What will you do if a girl stares at you from a far distance?',
        'options':[
          {'text':'I will stare back and start imaginating!',
          'score':100},  

          {'text':'I will just look at her and turn my head down',
          'score':1000},

          {'text':'I would look back and give a gentle smile!',
          'score':1},

          {'text':'I will stare back and give a wry smile!',
          'score':10},

          
        ]
        },

         {'question':'What if she starts approaching you?',
         'options':[
          {'text':'I will just look around and step aside!',
          'score':1000},  

          {'text':'I too will approach her with an imagination!',
          'score':100},

          {'text':'I would approach her swiftly before she could turn away',
          'score':10},

          {'text':'I will smile at her and wait till she reaches me',
          'score':1},
         ]
  
        },

         {'question':'What would you do if she starts speaking to you?',
         'options':[
          {'text':'I will oblige her words and reply back promptly',
          'score':1},  

          {'text':'I will speak to her even before she could speak!',
          'score':10},

          {'text':'I will behave as if she isnt speaking to me',
          'score':1000},

          {'text':'I will speak to her with an imagination!',
          'score':100}
         ]
  
        },

                 {'question':'What would you do if she proposes you?',
         'options':[
          {'text':'I will accept  and start imaginating!',
          'score':100},  

          {'text':'I will respect her decision but decline it!',
          'score':1},

          {'text':'I would accept it by a hug and a kiss!',
          'score':100},

          {'text':'I will act as if, its not for me!',
          'score':1000}
         ]
  
        },


           
             ];

    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Test your Personality!'
        ),
      ),
      body: _index < _ques.length ?
      Quiz(
        answerques: answerques,
        index: _index,
        ques: _ques,
      )
    : 
      Result(_totalScore,resetQuiz)
      ),
      );
  }
}
