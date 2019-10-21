import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:space/src/ui/auth/seeker/home_seeker.dart';
import 'package:space/src/ui/chat/inbox_ui_list.dart';
import 'package:space/src/ui/components/notification.dart';
import 'package:space/src/ui/seeker/layout/job_search.dart';
import 'package:space/src/ui/seeker/screens/seeker_tabs.dart';

class SeekerNavigator extends StatefulWidget {
  static const routeName = '/seeker-navigator';

  @override
  _SeekerNavigatorState createState() => _SeekerNavigatorState();
}

class _SeekerNavigatorState extends State<SeekerNavigator> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    HomePageSeeker(),
    SeekerTabs(),
    JobSearch(),
    InboxUiList(),
    NotificationUi(),
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
    ));
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xff0c0c0c0),
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.home, size: 24),
            title: Text('HOME',
                style: TextStyle(
                    height: 1.5,
                    fontFamily: 'VarelaRound',
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal)),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.briefcase, size: 24),
            title: Text('JOBS',
                style: TextStyle(
                    height: 1.5,
                    fontFamily: 'VarelaRound',
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal)),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.fileDocumentBoxSearchOutline, size: 24),
            title: Text('SEARCH',
                style: TextStyle(
                    height: 1.5,
                    fontFamily: 'VarelaRound',
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal)),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.messageSquare, size: 24),
            title: Text('INBOX',
                style: TextStyle(
                    height: 1.5,
                    fontFamily: 'VarelaRound',
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal)),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.bell, size: 24),
            title: Text('NOTIFICATION',
                style: TextStyle(
                    height: 1.5,
                    fontFamily: 'VarelaRound',
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal)),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.onPrimary,
        onTap: _onItemTapped,
      ),
    );
  }
}
