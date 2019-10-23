import 'package:flutter/material.dart';

import 'package:space/src/ui/employer/layout/interviewed_list.dart';

class InterviewedScreen extends StatefulWidget {
  _InterviewedScreenState createState() => _InterviewedScreenState();
}

class _InterviewedScreenState extends State<InterviewedScreen> {
  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              padding: EdgeInsets.only(top: 5),
              itemBuilder: (ctx, i) => (Column(
                children: <Widget>[
                  InterviewedList(),
                ],
              )),
            ),
    );
  }
}
