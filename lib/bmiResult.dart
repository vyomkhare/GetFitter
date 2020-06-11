import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {

  BmiResult(
      {@required this.interpretation,
        @required this.bmiResult,
        @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your BMI Result'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(25),
              padding: EdgeInsets.all(15),
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blueAccent,
                      Colors.cyanAccent
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.lightGreenAccent, fontSize: 25),
                  ),
                  Text(
                    bmiResult,
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 75, fontFamily: 'Lemonada'),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'Pacifico')
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
