import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome Page',
        theme: ThemeData.dark().copyWith(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.black,
          accentColor: Color(0xfff84257),
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController nameController = TextEditingController();

  bool isLoggedIn = false;
  String name = '';

  @override
  void initState() {
    super.initState();
    autoLogIn();
  }

  void autoLogIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String userId = prefs.getString('username');

    if (userId != null) {
      setState(() {
        isLoggedIn = true;
        name = userId;
      });
      return;
    }
  }

  Future<Null> logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', null);

    setState(() {
      name = '';
      isLoggedIn = false;
    });
  }

  Future<Null> loginUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', nameController.text);

    setState(() {
      name = nameController.text;
      isLoggedIn = true;
    });

    nameController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/WelcomeBG.png'),
          fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              CircleAvatar(
                radius: 62.0,
                backgroundColor: Colors.amberAccent,
                child: CircleAvatar(
                  radius: 58.0,
                  backgroundImage: AssetImage('images/GetFitterLogo.jpg'),
                ),
              ),
              Text(
                  'Welcome',
                style: TextStyle(
                  color: Colors.amber,
                  fontFamily: 'Lemonada',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 60.0),
              !isLoggedIn ? TextField(
                textAlign: TextAlign.center,
                controller: nameController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Please enter the Username',
                    hintStyle: TextStyle(fontFamily: 'Comfortaa', color: Colors.amber, backgroundColor: Colors.black),
                ),
              ) : Text(
                  'You are logged in as $name',
                style: TextStyle(fontFamily: 'Comfortaa', color: Colors.amber, backgroundColor: Colors.black),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.amberAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: () {
                      isLoggedIn ? logout() : loginUser();
                    },
                    child: isLoggedIn ? Text('Logout', style: TextStyle(fontFamily: 'Comfortaa', color: Colors.black, fontWeight: FontWeight.bold)) : Text('Login', style: TextStyle(fontFamily: 'Comfortaa', color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(width: 10.0,),
                  RaisedButton(
                    color: Colors.amberAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    onPressed: (){
                      if(isLoggedIn) {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) {
                          return HomePage();
                        },
                        ),
                        );
                      }
                      else print('Log In to Continue');
                    },
                    child: Text('Continue ￫', style: TextStyle(fontFamily: 'Comfortaa', color: Colors.black, fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
