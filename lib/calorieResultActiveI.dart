import 'package:flutter/material.dart';

class ActiveI extends StatelessWidget {

  ActiveI({@required this.lwm, @required this.mwm, @required this.gwm});

  final String lwm;
  final String mwm;
  final String gwm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Container(
              margin: EdgeInsets.all(25.0),
              padding: EdgeInsets.all(15.0),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [
                      Colors.green,
                      Colors.lightGreenAccent
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )
              ),
              child: Column(
                children: <Widget>[
                  Center(child: Icon(Icons.directions_walk, size: 100, color: Colors.black)),
                  Divider(
                    color: Colors.black,
                    height: 20,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Text('Lose Weight: ', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),),
                      ),
                      Expanded(child: Text(lwm, style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa')))
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Text('Maintain Weight: ', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa')),
                      ),
                      Expanded(child: Text(mwm, style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa')))
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Text('Gain Weight: ', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa')),
                      ),
                      Expanded(child: Text(gwm, style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa')))
                    ],
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}
