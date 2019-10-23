import 'package:flutter/material.dart';

class InterviewEmployer extends StatelessWidget {
  static const routeName = '/employer-interview';
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      title: Text(
        'How is your interview?',
        textAlign: TextAlign.center,
      ),
      titleTextStyle: TextStyle(
        color: Color(0xff3b3b3b),
        fontSize: 15,
      ),
      actions: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: MaterialButton(
                minWidth: 70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                color: Color(0xff65be3e),
                child: Text(
                  'Hired',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: MaterialButton(
                minWidth: 70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                color: Color(0xff4d4d4d),
                child: Text(
                  'Hold',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: MaterialButton(
                minWidth: 70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                },
                color: Color(0xfffb4848),
                child: Text(
                  'Rejected',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
