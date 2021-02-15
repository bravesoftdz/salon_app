import 'dart:math';

import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'selectLogin.dart';

class OnBoarding extends StatefulWidget {
  static final style = TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontFamily: "Billy",
    fontWeight: FontWeight.w600,
  );

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int page = 0;
  final liquidController = LiquidController();

  final pages = [
    Container(
      width: double.infinity,
      color: Colors.pink,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 250,
            width: 250,
            child: Image.asset(
              'lib/assets/images/welcome.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: <Widget>[
              Text(
                "Welcome to Salon",
                style: OnBoarding.style,
              ),
              Text(''),
              Text(
                "Salon lets you easily find and book  ",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
              Text(
                "appointments with local health and beauty",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
              Text(
                " professionals.",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      width: double.infinity,
      color: Colors.pink,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 250,
            width: 250,
            child: Image.asset(
              'lib/assets/images/find.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: <Widget>[
              Text(
                "Find Businesses",
                style: OnBoarding.style,
              ),
              Text(''),
              Text("Find the perfect health or beauty service by",
                  style: TextStyle(fontSize: 17, color: Colors.white)),
              Text(
                "name, location and availability",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      width: double.infinity,
      color: Colors.pink,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 250,
            width: 250,
            child: Image.asset(
              'lib/assets/images/appointment.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: <Widget>[
              Text(
                "Make an Appointment",
                style: OnBoarding.style,
              ),
              Text(''),
              Text(
                "Pick the services you want and get an instant",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
              Text("approval,No more waiting in line",
                  style: TextStyle(fontSize: 17, color: Colors.white)),
            ],
          ),
        ],
      ),
    ),
    // Container(
    //   width: double.infinity,
    //   color: Color(0xffF87273),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     mainAxisSize: MainAxisSize.max,
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: <Widget>[
    //       Image.asset(
    //         'assets/images/boarding5.jpg',
    //         fit: BoxFit.cover,
    //       ),
    //       Column(
    //         children: <Widget>[
    //           Text(
    //             "Click",
    //             style: OnBoarding.style,
    //           ),
    //           Text(
    //             "Done to next ",
    //             style: OnBoarding.style,
    //           ),
    //           Text(
    //             "Thank You",
    //             style: OnBoarding.style,
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // ),
  ];

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((page ?? 0) - index).abs(),
      ),
    );
    double zoom = 1.0 + (2.0 - 1.0) * selectedness;
    return new Container(
      width: 25.0,
      child: new Center(
        child: new Material(
          color: Colors.white,
          type: MaterialType.circle,
          child: new Container(
            width: 8.0 * zoom,
            height: 8.0 * zoom,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          LiquidSwipe(
            pages: pages,
            onPageChangeCallback: pageChangeCallback,
            waveType: WaveType.liquidReveal,
            liquidController: liquidController,
            ignoreUserGestureWhileAnimating: true,
            enableLoop: false,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Expanded(child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(pages.length, _buildDot),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: FlatButton(
                onPressed: () {
                  liquidController.currentPage <= pages.length - 2
                      ? liquidController.jumpToPage(
                          page: liquidController.currentPage + 1)
                      : Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => SelectLogin(),
                          ),
                        );
                },
                child: FutureBuilder(
                    future: Future.delayed(Duration(milliseconds: 300)),
                    builder: (ctx, snap) =>
                        snap.connectionState == ConnectionState.waiting
                            ? Text('Loading...')
                            : Text(
                                liquidController.currentPage <= pages.length - 2
                                    ? "Next"
                                    : "Get Started",
                                style: TextStyle(color: Colors.white))),
                color: Colors.white.withOpacity(0.01),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: FlatButton(
                onPressed: () {
                  liquidController.animateToPage(
                      page: pages.length - 1, duration: 500);
                },
                child: Text(
                  "Skip",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.white.withOpacity(0.01),
              ),
            ),
          )
        ],
      ),
    );
  }

  pageChangeCallback(int lpage) {
    setState(() {
      page = lpage;
    });
  }
}
