import 'package:flutter/material.dart';
import 'package:getfitter/sectionChest.dart';
import 'package:getfitter/sectionShoulders.dart';
import 'package:getfitter/sectionBack.dart';
import 'package:getfitter/sectionAbs.dart';
import 'package:getfitter/sectionLegs.dart';
import 'package:getfitter/sectionArms.dart';

class ExerciseSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercises', style: TextStyle(fontFamily: 'Lemonada', color: Colors.purpleAccent, fontWeight: FontWeight.bold)),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Expanded(child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ChestExSelection();
              }));
            },
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(7.5),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.purpleAccent,
                      Colors.pink
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Row(children: <Widget>[
                Expanded(
                    flex: 3,
                    child: Text('CHEST', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black))),
                Expanded(
                    child: Image.asset('images/Chest.png'))
              ],),
            ),
          )),
          Expanded(child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ShouldersExSelection();
              }));
            },
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(7.5),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.purpleAccent,
                      Colors.pink
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Row(children: <Widget>[
                Expanded(
                    flex: 3,
                    child: Text('SHOULDERS', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black))),
                Expanded(
                    child: Image.asset('images/Shoulders.png'))
              ],),
            ),
          )),
          Expanded(child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return BackExSelection();
              }));
            },
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(7.5),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.purpleAccent,
                      Colors.pink
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Row(children: <Widget>[
                Expanded(
                    flex: 3,
                    child: Text('BACK', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black))),
                Expanded(
                    child: Image.asset('images/Back.png'))
              ],),
            ),
          )),
          Expanded(child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ArmsExSelection();
              }));
            },
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(7.5),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.purpleAccent,
                      Colors.pink
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Row(children: <Widget>[
                Expanded(
                    flex: 3,
                    child: Text('ARMS', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black))),
                Expanded(
                    child: Image.asset('images/Arms.png'))
              ],),
            ),
          )),
          Expanded(child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return AbsExSelection();
              }));
            },
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(7.5),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.purpleAccent,
                      Colors.pink
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Row(children: <Widget>[
                Expanded(
                    flex: 3,
                    child: Text('ABDOMEN', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black))),
                Expanded(
                    child: Image.asset('images/Abs.png'))
              ],),
            ),
          )),
          Expanded(child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return LegsExSelection();
              }));
            },
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(7.5),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.purpleAccent,
                      Colors.pink
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Row(children: <Widget>[
                Expanded(
                    flex: 3,
                    child: Text('LEGS', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black))),
                Expanded(
                    child: Image.asset('images/Legs.png'))
              ],),
            ),
          ))
        ],
      ),
    );
  }
}
