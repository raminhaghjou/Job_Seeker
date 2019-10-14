import 'package:flutter/material.dart';
import 'package:space/src/ui/employer/layout/employer_edit_post.dart';

class EmployerAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scaffold = Scaffold.of(context);
    return SliverAppBar(
      iconTheme: IconThemeData(color: Color(0xff3b3b3b)),
      leading: Builder(
        builder: (context) => IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => scaffold.openDrawer(),
        ),
      ),
      floating: true,
      pinned: true,
      snap: true,
      forceElevated: true,
      centerTitle: true,
      title: SizedBox(
        child: Image.asset('assets/logo_vertical.png'),
        height: 30,
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).pushNamed(
              EditPost.routeName,
            );
          },
        ),
      ],
      bottom: TabBar(
        unselectedLabelColor: Color(0xff3b3b3b),
        indicatorColor: Colors.yellow[700],
        labelColor: Colors.yellow[700],
        labelStyle: TextStyle(fontSize: 14, color: Colors.yellow[700]),
        unselectedLabelStyle: TextStyle(color: Color(0xff000000)),
        tabs: <Widget>[
          Tab(text: 'Applicants'),
          Tab(text: 'Interviewed'),
          Tab(text: 'Posted'),
        ],
      ),
    );
  }
}
