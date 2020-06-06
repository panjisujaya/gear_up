import 'package:flutter/material.dart';
import 'package:uas_fix/buyer/second_screen.dart';
import 'package:uas_fix/login/sign_in.dart';
import 'package:uas_fix/seller/first_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(size: 150),
              SizedBox(height: 50),
              _signInButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signInButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        signInWithGoogle().whenComplete(() {
          print(email);
          if (email == 'panjicvc@gmail.com') {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return FirstScreen();
            }));
          } else {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return SecondScreen();
            }));
          }
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/img/google_logo.png"), height: 35),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Log In With Google',
                  style: TextStyle(fontSize: 20, color: Colors.grey)),
            )
          ],
        ),
      ),
    );
  }
}
