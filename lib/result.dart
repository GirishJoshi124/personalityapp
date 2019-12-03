import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final Function resultQuiz;

  Result(this.resultScore,this.resultQuiz);

String get resultString{

String resultText;




if(resultScore == 4)
{
  resultText = 'you are a gentleman';}

  else if(resultScore== 40)
{resultText = 'you are a playboy!';}

else if(resultScore == 400)
{resultText = 'you are a chool boy';}

else if(resultScore == 4000 )
{resultText = 'you are a chutiya!!';}

else if(resultScore == 22 || resultScore == 31 || resultScore ==13)
{resultText ='you are somewhere between gentleman and playboy';}

else if(resultScore == 202 || resultScore == 301 || resultScore ==103)
{resultText ='you are somewhere between gentleman and choolboy';}

else if(resultScore == 2002 || resultScore == 3001 || resultScore ==1003)
{resultText ='you are somewhere between gentleman and chutiya';}

else if(resultScore == 220 || resultScore == 310 || resultScore == 130)
{resultText ='you are somewhere between playboy and choolboy';}

else if(resultScore == 2020 || resultScore == 3010 || resultScore == 1030)
{resultText ='you are somewhere between playboy and chutiya';}

else if(resultScore == 2200 || resultScore == 3100 || resultScore == 1300)
{resultText ='you are somewhere between choolboy and chutiya';}

else if(resultScore == 112 || resultScore == 1012 || resultScore == 1102)
{resultText ='you are more of gentleman with qualities of playboy, choolboy and chutiya mixed';}

else if(resultScore == 121 || resultScore == 1021 || resultScore == 1120)
{resultText ='you are more of playboy with qualities of gentleman, choolboy and chutiya mixed';}

else if(resultScore == 221 || resultScore == 1201 || resultScore == 1210)
{resultText ='you are more of choolboy with qualities of gentleman, playboy and chutiya mixed';}

else if(resultScore == 2011 || resultScore == 2101 || resultScore == 2110)
{resultText ='you are more of chutiya with qualities of gentleman, playboy and choolboy mixed';}

else
{
  resultText = 'you are a mixture of gentleman, playboy, choolboy and chutiya!!!';
}


return resultText;
}
  @override
  Widget build(BuildContext context) {
    return Center(
     child: Column(
       
       children: <Widget>[
         Text(resultString,
         style: TextStyle(
           color: Colors.red,
         fontSize:30,
         fontWeight: FontWeight.bold,
    ),
         textAlign:TextAlign.center,
         ),
         FlatButton(
           textColor: Colors.blue,
           child: Text('Retake test!',
         style: TextStyle(fontWeight: FontWeight.bold)),
         onPressed: resultQuiz,)
       ],
     ), 
    );
  }
}