import 'package:flutter/material.dart';
import 'package:getfitter/exercisePageTemplate.dart';

class AbsExSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Abdomen Exercises', style: TextStyle(fontFamily: 'Lemonada', color: Colors.redAccent, fontWeight: FontWeight.bold)),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Abs (1).gif', exerciseName: 'Floor Press with Leg Raise', exerciseDescription: 'For overall chest developement');
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
                  child: Center(child: Text('Floor Press with Leg Raise', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Abs (2).gif', exerciseName: 'Under the Moons', exerciseDescription: 'For overall chest developement');
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
                  child: Center(child: Text('Under the Moon', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black)))))),
          Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReusableExerciseTemplate(imagePath: 'Exercises/Abs (3).gif', exerciseName: 'Cobra Stretch', exerciseDescription: 'For overall chest developement');
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
                  child: Center(child: Text('Cobra Stretch', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black))))))
        ],
      ),
    );
  }
}
