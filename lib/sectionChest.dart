import 'package:flutter/material.dart';
import 'package:getfitter/exercisePageTemplate.dart';

class ChestExSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chest Exercises', style: TextStyle(fontFamily: 'Lemonada', color: Colors.redAccent, fontWeight: FontWeight.bold)),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Chest (1).gif', exerciseName: 'Flat Bench Press', exerciseDescription: 'For overall chest developement');
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
                  child: Center(child: Text('Flat Bench Press', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Chest (2).gif', exerciseName: 'Incline Bench Press', exerciseDescription: 'For upper chest developement');
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
                  child: Center(child: Text('Incline Bench Press', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Chest (3).gif', exerciseName: 'Decline Bench Press', exerciseDescription: 'For lower chest developement');
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
                  child: Center(child: Text('Decline Bench Press', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Chest (4).gif', exerciseName: 'Cable Chest Flies', exerciseDescription: 'For mid chest partition developement');
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
                  child: Center(child: Text('Cable Chest Flies', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Chest (5).gif', exerciseName: 'Cable Lower Chest Raises', exerciseDescription: 'For lower chest partition developement');
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
                  child: Center(child: Text('Cable Lower Chest Raises', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Chest (6).gif', exerciseName: 'Chest Press', exerciseDescription: 'For central chest developement');
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
                  child: Center(child: Text('Chest Press', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
        ],
      ),
    );
  }
}
