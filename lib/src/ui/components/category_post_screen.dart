import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:space/src/ui/seeker/layout/job_list.dart';

class CategoryPostScreen extends StatefulWidget {
  _CategoryPostScreenState createState() => _CategoryPostScreenState();
}

class _CategoryPostScreenState extends State<CategoryPostScreen> {
  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    // final jobData = Provider.of<Jobs>(context);
    // final jobs = jobData.posts;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 1,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              icon: Icon(MdiIcons.chevronLeft, color: Color(0xff2c4057), size: 16)),
          title: Text('Job List',
              style: TextStyle(
                color: Color(0xff2c4057),
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              )),
        ),
      ),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemBuilder: (ctx, i) => (
                // builder: (c) => jobs[i],
                 JobsList()),
            ),
    );
  }
}
