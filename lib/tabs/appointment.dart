import 'package:flutter/material.dart';

class Appointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width / 1,
        child: Column(
          children: [
            Image(image: AssetImage('lib/assets/images/appointment.png')),
            Text(
              "APPOINTMENT CONFIRMATION",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              // style: OnBoarding.style,
            ),
            Text(''),
            Text(
              "You don\'t need to do anything else . We will  ",
              style: TextStyle(fontSize: 17, color: Colors.grey),
            ),
            Text(
              "send yo a reminder before the ",
              style: TextStyle(fontSize: 17, color: Colors.grey),
            ),
            Text(
              " appointment.",
              style: TextStyle(fontSize: 17, color: Colors.grey),
            ),
            RaisedButton(
              onPressed: () {},
              color: Colors.yellow,
              child: Text('Ok.GOT IT',
                  style: TextStyle(fontSize: 17, color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
