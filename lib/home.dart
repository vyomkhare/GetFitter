import 'package:flutter/material.dart';
import 'package:getfitter/sectionLoseGainWt.dart';
import 'sectionCalorieBMI.dart';
import 'sectionExercises.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Home', style: TextStyle(fontFamily: 'Lemonada', color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold),),
        leading: Icon(Icons.home, color: Colors.deepOrangeAccent),
      ),
      body: Column(
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
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return CBSelection();
                        },
                        ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                        width: 300.0,
                        height: 90.0,
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
                        child: Text('Calculate BMI & Calories', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ExerciseSelection();
                        }));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                        width: 300.0,
                        height: 90.0,
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
                        child: Text('Exercises', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black)),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return LGWtSelection();
                        }));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                        width: 300.0,
                        height: 90.0,
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
                        child: Text('Personalised guidance', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black)),
                      ),
                    ),
                  ),
                ),
                Expanded(child: SizedBox(height: 50))
              ],
            ),
          )
        ],
      ),
    );
  }
}
