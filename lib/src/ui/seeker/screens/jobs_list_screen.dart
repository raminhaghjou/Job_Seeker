import 'package:flutter/material.dart';

import 'package:space/src/ui/seeker/layout/job_list.dart';

class JobsListScreen extends StatefulWidget {
  _JobsListScreenState createState() => _JobsListScreenState();
}

class _JobsListScreenState extends State<JobsListScreen> {
  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    // final jobData = Provider.of<Jobs>(context);
    // final jobs = jobData.posts;
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
                  JobsList(),
                ],
              )),
            ),
    );
  }
}
