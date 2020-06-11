import 'package:flutter/material.dart';
import 'package:getfitter/bmiResult.dart';
import 'package:getfitter/bmiBrain.dart';

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  int heightBMI=175;
  int weightBMI=60;
  int ageBMI=21;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculation', style: TextStyle(fontFamily: 'Lemonada', color: Colors.cyanAccent, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
//          Expanded(child: Center(
//            child: CircleAvatar(
//              radius: 62.0,
//              backgroundColor: Color(0xfff64c72),
//              child: CircleAvatar(
//                radius: 58.0,
//                backgroundImage: AssetImage('images/GetFitterLogo.jpg'),
//              ),
//            ),
//          ),
//          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blueAccent,
                      Colors.cyanAccent
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black)),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(heightBMI.toString(), style: TextStyle(fontFamily: 'Comfortaa', fontSize: 50, color: Colors.black)),
                      Text('cm', style: TextStyle(fontFamily: 'Comfortaa', color: Colors.black, fontWeight: FontWeight.bold))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Slider(
                      value: heightBMI.toDouble(),
                      min: 125.0, max: 225.0,
                      activeColor: Colors.black,
                      inactiveColor: Colors.black26,
                      onChanged: (double newVal){
                        setState(() {
                          heightBMI=newVal.round();
                        });
                      }
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: Container(
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blueAccent,
                        Colors.cyanAccent
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('WEIGHT', style: TextStyle(fontFamily: 'Comfortaa', color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(weightBMI.toString(), style: TextStyle(fontFamily: 'Comfortaa', color: Colors.black, fontSize: 42, fontWeight: FontWeight.bold)),
                        Text('kg', style: TextStyle(fontFamily: 'Comfortaa', color: Colors.black, fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                            onTap: (){
                              setState(() {
                                weightBMI++;
                              });
                            },
                            child: Icon(Icons.add_circle, size: 50, color: Colors.black,)),
                        SizedBox(width: 10.0,),
                        GestureDetector(
                            onTap: (){
                              setState(() {
                                weightBMI--;
                              });
                            },
                            child: Icon(Icons.remove_circle, size: 50, color: Colors.black))
                      ],
                    ),
                  ],
                ),
              )),
              Expanded(child: Container(
                margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blueAccent,
                          Colors.cyanAccent
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('AGE', style: TextStyle(fontFamily: 'Comfortaa', color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(ageBMI.toString(), style: TextStyle(fontFamily: 'Comfortaa', color: Colors.black, fontSize: 42, fontWeight: FontWeight.bold)),
                        Text('yrs', style: TextStyle(fontFamily: 'Comfortaa', color: Colors.black, fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                            onTap: (){
                              setState(() {
                                ageBMI++;
                              });
                            },
                            child: Icon(Icons.add_circle, size: 50, color: Colors.black)),
                        SizedBox(width: 10.0,),
                        GestureDetector(
                            onTap: (){
                              setState(() {
                                ageBMI--;
                              });
                            },
                            child: Icon(Icons.remove_circle, size: 50, color: Colors.black))
                      ],
                    ),
                  ],
                )
              )),
            ],
          )),
          GestureDetector(
            onTap: (){
              BmiBrain calc = BmiBrain(height: heightBMI, weight: weightBMI);
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return BmiResult(
                  bmiResult: calc.calculateBMI(),
                  resultText: calc.getResult(),
                  interpretation: calc.getInterpretation(),
                );
              }));
            },
            child: Container(
              height: 65.0, width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(bottom: 10.0),
              color: Colors.blueAccent,
              child: Center(child: Text('CALCULATE', style: TextStyle(fontFamily: 'Comfortaa', color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold))),
            ),
          )
        ],
      ),
    );
  }
}
