import 'package:flutter/material.dart';

import 'package:space/src/ui/employer/layout/employer_app_bar.dart';
import 'package:space/src/ui/employer/widgets/employer_app_drawer.dart';
import 'package:space/src/ui/employer/screens/employer_posted_screen.dart';
import 'package:space/src/ui/employer/screens/employer_seeker_screen.dart';
import 'package:space/src/ui/seeker/screens/jobs_list_screen.dart';

class EmployerTabs extends StatelessWidget {
  static const routeName = 'employer_tabs';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxScrolled) =>
                [EmployerAppBar()],
            body: TabBarView(
              children: <Widget>[
                EmployerSeekerList(),
                JobsListScreen(),
                EmployerPostScreen(),
              ],
            )),
        drawer: EmployerDrawer(),
      ),
    );
  }
}
