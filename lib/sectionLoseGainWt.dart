import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getfitter/sectionLoseWt.dart';
import 'package:getfitter/sectionGainWt.dart';

class LGWtSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose your goal', style: TextStyle(fontFamily: 'Lemonada'),),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: SizedBox(height: 110,)
//                Center(child: Text('Choose your goal'))
            ),
            Expanded(
              flex: 4,
              child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return LoseWt();
                      }));
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(7.5),
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
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Image.asset('images/LoseWeightIcon.png'),
                            )
                          ),
                          SizedBox(height: 40),
                          Expanded(child: Text('Lose Weight', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black)))
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return GainWt();
                      }));
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(7.5),
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
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Image.asset('images/GainWeightIcon.png'),
                            )
                          ),
                          SizedBox(height: 40),
                          Expanded(child: Text('Gain Weight', style: TextStyle(fontFamily: 'Comfortaa', fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black)))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),),
            Expanded(
              flex: 2,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                      child: Center(child: Text('Both options will involve Muscle Building:'))),
                  Expanded(
                    child: Image(
                      width: 40.0, height: 40.0, image: AssetImage('images/MuscleUp.png'),
                    ),
                  )
                ],
              )
            )
          ],
        ),
      )
    );
  }
}
