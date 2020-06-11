import 'package:flutter/material.dart';
import 'package:getfitter/sectionBiceps.dart';
import 'package:getfitter/sectionTriceps.dart';

class ArmsExSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return BicepsExSelection();
              }));
            },
            child: Container(
              height: 100,
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
                  Expanded(flex: 3, child: Text('Biceps', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black))),
                  Expanded(child: Image.asset('images/Biceps.png'))
                ],),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return TricepsExSelection();
              }));
            },
            child: Container(
              height: 100,
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
                  Expanded(flex: 3, child: Text('Triceps', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.black))),
                  Expanded(child: Image.asset('images/Triceps.png'))
                ],),
              )
            ),
          )
        ],
      ),
    );
  }
}
