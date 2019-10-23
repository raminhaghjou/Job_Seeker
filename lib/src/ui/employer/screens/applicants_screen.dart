import 'package:flutter/material.dart';

import 'package:space/src/ui/employer/layout/applicants_list.dart';

class ApplicantsScreen extends StatefulWidget {
  _ApplicantsScreenState createState() => _ApplicantsScreenState();
}

class _ApplicantsScreenState extends State<ApplicantsScreen> {
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
                  ApplicantsList(),
                ],
              )),
            ),
    );
  }
}
