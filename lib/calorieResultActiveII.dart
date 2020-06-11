import 'package:flutter/material.dart';

class ActiveII extends StatelessWidget {

  ActiveII({@required this.lwv, @required this.mwv, @required this.gwv});

  final String lwv;
  final String mwv;
  final String gwv;

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
                  Center(child: Icon(Icons.directions_run, size: 100, color: Colors.black)),
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
                      Expanded(child: Text(lwv, style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa')))
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Text('Maintain Weight: ', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa')),
                      ),
                      Expanded(child: Text(mwv, style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa')))
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Text('Gain Weight: ', style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa')),
                      ),
                      Expanded(child: Text(gwv, style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa')))
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
