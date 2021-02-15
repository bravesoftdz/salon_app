import 'dart:async';

import 'package:flutter/material.dart';

import 'onBoarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Setting duration in splash screen
  startTime() async {
    return new Timer(Duration(milliseconds: 2000), navigatorPage);
  }

  // To navigate layout change
  void navigatorPage() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => OnBoarding(),
      ),
    );
  }

  // Declare startTime to InitState
  @override
  void initState() {
    super.initState();
    startTime();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/hair-salon-3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            // image: DecorationImage(
            //  // image: AssetImage('lib/assets/images/icon.png'),
            //   fit: BoxFit.cover,
            // ),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(0, 0, 0, 0.3),
                Color.fromRGBO(0, 0, 0, 0.4)
              ],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                    ),
                    Container(
                      height: 99,
                      width: 99,
                      child: Image(
                        image: AssetImage('lib/assets/images/icon.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Text(
                    //   "Welcome to",
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //     fontWeight: FontWeight.w300,
                    //     fontSize: 19.0,
                    //   ),
                    // ),
                    Hero(
                      tag: "tsdq",
                      child: Text(
                        "",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 35.0,
                          letterSpacing: 0.8,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
