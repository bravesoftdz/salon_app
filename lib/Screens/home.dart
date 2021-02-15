import 'dart:ffi';

import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

import 'package:flutter/material.dart';

import '../tabs/account.dart';
import '../tabs/chat.dart';
import '../tabs/appointment.dart';
import '../tabs/explore.dart';
import '../tabs/search.dart';

class HomeScreen extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomeScreen> {
  // List labels = [Explore(), Search(), Appointment(), Chat(), Account()];
  int currentIndexx = 0;
  // int _index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Floating NavBar Example',
      home: Scaffold(
        //If you want to show body behind the navbar, it should be true
        extendBody: true,
        body: [Explore(), Search(), Appointment(), Chat(), Account()]
            .elementAt(currentIndexx),
        bottomNavigationBar: FloatingNavbar(
          selectedBackgroundColor: Colors.yellowAccent,
          unselectedItemColor: Colors.grey[800],
          backgroundColor: Colors.yellow[50],
          onTap: (int val) => setState(() {
            currentIndexx = val;
          }),
          currentIndex: currentIndexx,
          items: [
            FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
            FloatingNavbarItem(icon: Icons.search, title: 'Search'),
            FloatingNavbarItem(icon: Icons.calendar_today, title: 'Fix'),
            FloatingNavbarItem(icon: Icons.chat, title: 'Chats'),
            FloatingNavbarItem(icon: Icons.account_box, title: 'Profile'),
          ],
        ),
      ),
    );
  }
}
