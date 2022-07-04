import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kiahcare/Screens/Auth/SignUp.dart';
import 'package:kiahcare/Screens/Auth/SignIn.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const routeName = '/SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration,
            () async{
          // SharedPreferences prefs = await SharedPreferences.getInstance();
          // setState(() {
          //   email_number = prefs.getString('userid');
          //   password = prefs.getString('password');
          // });
          //
          // email_number != null && password != null ?
          // Autologin(email_number, password) :
          Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => AuthLanding()
          ));
        });
  }

  // Autologin(String mail, String pass) async {
  //   await Provider.of<AuthProvider>(context, listen: false)
  //       .loginUser(mail, pass);
  //   Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(builder: (context) =>
  //           dashboardPage()
  //       ));
  // }

  @override
  void initState() {
    super.initState();
    startTime();
    // Navigator.push(context, MaterialPageRoute(
    //   builder: (context) => AuthLanding()
    // ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade400,
        body: Container(
          child: Center(
            child: Text(
              'Kiah Care',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        )
    );
  }
}


