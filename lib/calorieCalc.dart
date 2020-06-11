import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getfitter/calorieResultSedentary.dart';
import 'package:getfitter/calorieSedentaryBrain.dart';
import 'package:getfitter/calorieResultActiveI.dart';
import 'package:getfitter/calorieActiveIBrain.dart';
import 'package:getfitter/calorieResultActiveII.dart';
import 'package:getfitter/calorieActiveIIBrain.dart';

class CalorieCalculator extends StatefulWidget {
  @override
  _CalorieCalculatorState createState() => _CalorieCalculatorState();
}

class _CalorieCalculatorState extends State<CalorieCalculator> {
  int weightCal = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calorie Counter', style: TextStyle(fontFamily: 'Lemonada', color: Colors.green, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.all(10.0),
                width: double.infinity,
                height: 175.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [
                        Colors.green,
                        Colors.lightGreenAccent
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('WEIGHT', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black)),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(weightCal.toString(), style: TextStyle(fontFamily: 'Comfortaa', fontSize: 50, color: Colors.black),),
                          Text('kg', style: TextStyle(fontFamily: 'Comfortaa', color: Colors.black, fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                              onTap: (){
                                setState(() {
                                  weightCal++;
                                });
                              },
                              child: Icon(Icons.add_circle, size: 75, color: Colors.black)),
                          SizedBox(width: 10.0,),
                          GestureDetector(
                              onTap: (){
                                setState(() {
                                  weightCal--;
                                });
                              },
                              child: Icon(Icons.remove_circle, size: 75, color: Colors.black))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Expanded(child: GestureDetector(
                    onTap: (){
                      SedentaryBrain r1=SedentaryBrain(weight: weightCal);
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Sedentary(
                          lws: r1.getLWS(),
                          mws: r1.getMWS(),
                          gws: r1.getGWS(),
                        );
                      }));
                    },
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Icon(Icons.airline_seat_recline_normal, size: 75, color: Colors.green)),
                        Expanded(child: Text('Sedentary', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.green)))
                      ],
                    ),
                  )),
                  Expanded(child: GestureDetector(
                    onTap: (){
                      ActiveIBrain r2=ActiveIBrain(weight: weightCal);
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ActiveI(
                          lwm: r2.getLWM(),
                          mwm: r2.getMWM(),
                          gwm: r2.getGWM(),
                        );
                      }));
                    },
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Icon(Icons.directions_walk, size: 75, color: Colors.green)),
                        Expanded(child: Text('Moderately Active', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.green)))
                      ],
                    ),
                  )),
                  Expanded(child: GestureDetector(
                    onTap: (){
                      ActiveIIBrain r2=ActiveIIBrain(weight: weightCal);
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ActiveII(
                          lwv: r2.getLWV(),
                          mwv: r2.getMWV(),
                          gwv: r2.getGWV(),
                        );
                      }));
                    },
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Icon(Icons.directions_run, size: 75, color: Colors.green)),
                        Expanded(child: Text('Very Active', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.green)))
                      ],
                    ),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
