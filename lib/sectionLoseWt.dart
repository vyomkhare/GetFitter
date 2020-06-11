import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'sectionExercises.dart';

class LoseWt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lose Weight', style: TextStyle(fontFamily: 'Lemonada'),),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff12c2e9),
                    Color(0xffc471ed),
                    Color(0xfff64f59)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: <Widget>[
                Text('Cardio', style: TextStyle(fontFamily: 'Lemonada', fontWeight: FontWeight.bold, fontSize: 35, color: Colors.black),),
                Divider(
                  height: 50,
                  thickness: 2,
                  color: Colors.black,
                ),
                Text('1. Elliptical [15 mins.]', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),),
                SizedBox(height: 15,),
                Text('2. Treadmill [20 mins.]', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),),
                SizedBox(height: 15,),
                Text('3. Stationery Bike [15 mins.]', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),),
                SizedBox(height: 50,),
                Icon(Icons.add_circle, color: Colors.black, size: 50,),
                SizedBox(height: 25,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ExerciseSelection();
                    }));
                  },
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(25),
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black,
                            Colors.black54
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Text('EXERCISES', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white))),
                  ),
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}
