import 'package:flutter/material.dart';
import 'package:space/src/ui/seeker/layout/seeker_app_bar.dart';

import 'package:space/src/ui/seeker/widgets/seeker_app_drawer.dart';
import 'package:space/src/ui/seeker/screens/applys_screen.dart';
import 'package:space/src/ui/seeker/screens/jobs_list_screen.dart';
import 'package:space/src/ui/seeker/screens/save_screen.dart';

var _showSaves = false;

class SeekerTabs extends StatelessWidget {
  static const routeName = 'seeker-tabs';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: AppDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxScrolled) => [SeekerAppBar()],
          body: TabBarView(
            children: <Widget>[
              // RefreshIndicator(
              //   onRefresh: () async {
              //     return true;
              //   },
              //   child:
              JobsListScreen(),
              ApplysScreen(),
              SaveListScreen(_showSaves),
            ],
          ),
        ),
      ),
    );
  }
}
