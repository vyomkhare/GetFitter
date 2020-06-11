import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getfitter/bmiCalc.dart';
import 'package:getfitter/calorieCalc.dart';

class CBSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Select', style: TextStyle(fontFamily: 'Lemonada', fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: CircleAvatar(
              radius: 60.0,
              backgroundColor: Colors.deepOrangeAccent,
              child: CircleAvatar(
                radius: 58.0,
                backgroundImage: AssetImage('images/GetFitterLogo.jpg'),
              ),
            ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return CalorieCalculator();
                          },
                          )
                          );
                        },
                        child: Container(
                          width: 150.0,
                          height: 300.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.deepOrangeAccent,
                                  Colors.amberAccent
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              )
                          ),
                          child: Center(child: Text('Calorie Intake', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black))),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return BMICalculator();
                          }));
                        },
                        child: Container(
                          width: 150.0,
                          height: 300.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.deepOrangeAccent,
                                  Colors.amberAccent
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              )
                          ),
                          child: Center(child: Text('B.M.I.', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black))),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
