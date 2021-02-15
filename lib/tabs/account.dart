import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
          child: Container(
        decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(
                    MediaQuery.of(context).size.width, 33.0))),
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 4,
        // color: Colors.yellow,
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: Text(
                'Signin to continue',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
        ]),
      )),
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
        child: TextField(
          decoration: InputDecoration(
              hintStyle: TextStyle(fontSize: 22),
              hintText: 'Email',
              labelText: 'Email',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              fillColor: Colors.white,
              filled: true),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
        child: TextField(
          decoration: InputDecoration(
              labelText: 'Password',
              hintStyle: TextStyle(fontSize: 22),
              hintText: 'Password',
              suffixIcon: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(
                  Icons.face_unlock_outlined,
                  size: 35,
                ),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              fillColor: Colors.white,
              filled: true),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Forgot Password?',
          style: TextStyle(color: Colors.blue, fontSize: 18),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: RaisedButton(
          color: Colors.yellow,
          onPressed: () {},
          child: Text(
            'SIGNIN',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Don\'t have a booker account?',
          style: TextStyle(color: Colors.grey, fontSize: 18),
        ),
      ),
      Text(
        'Signup Now',
        style: TextStyle(
            color: Colors.indigo, fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ]);
  }
}
