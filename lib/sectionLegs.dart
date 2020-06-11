import 'package:flutter/material.dart';
import 'package:getfitter/exercisePageTemplate.dart';

class LegsExSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Legs Exercises', style: TextStyle(fontFamily: 'Lemonada', color: Colors.redAccent, fontWeight: FontWeight.bold)),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Legs (1).gif', exerciseName: 'Walking Lunges', exerciseDescription: 'For overall chest developement');
                }));
              },
              child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(7.5),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.red,
                          Colors.deepOrangeAccent
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Text('Walking Lunges', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Legs (2).gif', exerciseName: 'Deadlift', exerciseDescription: 'For overall chest developement');
                }));
              },
              child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(7.5),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.red,
                          Colors.deepOrangeAccent
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Text('Deadlift', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Legs (3).gif', exerciseName: 'Squats', exerciseDescription: 'For overall chest developement');
                }));
              },
              child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(7.5),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.red,
                          Colors.deepOrangeAccent
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Text('Squats', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Legs (4).gif', exerciseName: 'Calf Raises', exerciseDescription: 'For overall chest developement');
                }));
              },
              child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(7.5),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.red,
                          Colors.deepOrangeAccent
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Text('Calf Raises', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Legs (5).gif', exerciseName: 'Hamstring Curls', exerciseDescription: 'For overall chest developement');
                }));
              },
              child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(7.5),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.red,
                          Colors.deepOrangeAccent
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Text('Hamstring Curls', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Legs (6).gif', exerciseName: 'Leg Extensions', exerciseDescription: 'For overall chest developement');
                }));
              },
              child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(7.5),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.red,
                          Colors.deepOrangeAccent
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Text('Leg Extensions', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
        ],
      ),
    );
  }
}
