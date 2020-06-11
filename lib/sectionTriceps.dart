import 'package:flutter/material.dart';
import 'package:getfitter/exercisePageTemplate.dart';

class TricepsExSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tricep Exercises', style: TextStyle(fontFamily: 'Lemonada', color: Colors.redAccent, fontWeight: FontWeight.bold)),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Triceps (1).gif', exerciseName: 'Skull Crushers', exerciseDescription: 'For overall chest developement');
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
                  child: Center(child: Text('Skull Crushers', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Triceps (2).gif', exerciseName: 'Tricep Dips', exerciseDescription: 'For overall chest developement');
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
                  child: Center(child: Text('Tricep Dips', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Triceps (3).gif', exerciseName: 'Tricep Pulldown', exerciseDescription: 'For overall chest developement');
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
                  child: Center(child: Text('Tricep Pulldown', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Triceps (4).gif', exerciseName: 'Tricep Rope Pulldown', exerciseDescription: 'For overall chest developement');
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
                  child: Center(child: Text('Tricep Rope Pulldown', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Triceps (5).gif', exerciseName: 'Close-grip Bench Press', exerciseDescription: 'For overall chest developement');
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
                  child: Center(child: Text('Close-grip Bench Press', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black))))))
        ],
      ),
    );
  }
}
