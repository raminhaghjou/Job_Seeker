import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:space/src/ui/seeker/layout/cv.dart';

class SeekerAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      iconTheme: IconThemeData(color: Color(0xff3b3b3b)),
      floating: true,
      pinned: true,
      snap: true,
      forceElevated: true,
      centerTitle: true,
      title: SizedBox(
        child: Image.asset('assets/logo_vertical.png'),
        height: 60,
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(MdiIcons.accountDetails),
          iconSize: 28,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CVSeeker()),
            );
          },
        )
      ],
      bottom: TabBar(
        unselectedLabelColor: Color(0xff3b3b3b),
        indicatorColor: Colors.yellow[700],
        labelColor: Colors.yellow[700],
        labelStyle: TextStyle(fontSize: 14, color: Colors.yellow[700]),
        unselectedLabelStyle: TextStyle(color: Color(0xff000000)),
        tabs: <Widget>[
          Tab(text: 'New'),
          Tab(text: 'Applied'),
          Tab(text: 'Saved'),
        ],
      ),
    );
  }
}
