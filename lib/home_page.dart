import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_login/login_page.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }

}

class HomePageState extends State<HomePage>{
  final GoogleSignIn googleSignIn = new GoogleSignIn();

  void _signOut() {
    setState(() {
      googleSignIn.signOut();
      googleSignIn.disconnect();
      Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()),);
    });
  }

  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('Welocme'),
          centerTitle: true,
        ),
        body: new Center(
          child: new Container(
            child: new Text('Welcome',
              style: new TextStyle(
                fontSize: 32.0,
              ),
            ),
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: _signOut,
          tooltip: 'Logout',
          child: new Icon(Icons.exit_to_app, color: Colors.white,),
        ),
      );
    }
  }