import 'package:flutter/material.dart';

class InterviewSeeker extends StatelessWidget {
  static const routeName = '/seeker-interview';
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      title: Text(
        'Interview session is done',
        textAlign: TextAlign.center,
      ),
      titleTextStyle: TextStyle(
        color: Color(0xff3b3b3b),
        fontSize: 15,
      ),
      actions: <Widget>[
        Container(
          width: 260,
          alignment: Alignment.center,
          child: FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {},
            color: Color(0xff65be3e),
            child: Text(
              'Home',
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
