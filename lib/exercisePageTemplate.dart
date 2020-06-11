import 'package:flutter/material.dart';

class ReusableExerciseTemplate extends StatelessWidget {
  ReusableExerciseTemplate({@required this.exerciseDescription, @required this.imagePath, @required this.exerciseName});

  final String imagePath;
  final String exerciseName;
  final String exerciseDescription;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset(imagePath))),
            ),
            Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    Expanded(child: Text(exerciseName),),
                    Expanded(flex: 2, child: Text(exerciseDescription),)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
