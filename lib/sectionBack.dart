import 'package:flutter/material.dart';
import 'package:getfitter/exercisePageTemplate.dart';

class BackExSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back Exercises', style: TextStyle(fontFamily: 'Lemonada', color: Colors.redAccent, fontWeight: FontWeight.bold)),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Back (1).gif', exerciseName: 'Partial Back Fly', exerciseDescription: 'For overall chest developement');
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
                  child: Center(child: Text('Partial Back Fly', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Back (2).gif', exerciseName: 'Pull Ups', exerciseDescription: 'For overall chest developement');
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
                  child: Center(child: Text('Pull Ups', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Back (3).gif', exerciseName: 'Meadows Rowing', exerciseDescription: 'For overall chest developement');
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
                  child: Center(child: Text('Meadows Rowing', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Back (4).gif', exerciseName: 'Dumbbell Rowing', exerciseDescription: 'For overall chest developement');
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
                  child: Center(child: Text('Dumbbell Rowing', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Back (5).gif', exerciseName: 'Lat Pullback', exerciseDescription: 'For overall chest developement');
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
                  child: Center(child: Text('Lat Pullback', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Back (6).gif', exerciseName: 'Hyperextension', exerciseDescription: 'For overall chest developement');
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
                  child: Center(child: Text('Hyperextension', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
        ],
      ),
    );
  }
}
