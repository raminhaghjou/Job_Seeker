import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:space/src/ui/auth/employer/home_employer.dart';
import 'package:space/src/ui/chat/chat_list_employer.dart';
import 'package:space/src/ui/components/notification.dart';
import 'package:space/src/ui/employer/layout/employer_edit_post.dart';
import 'package:space/src/ui/employer/screens/employer_tabs.dart';

class EmployerNavigator extends StatefulWidget {
  static const routeName = '/employer-navigator';
  @override
  _EmployerNavigatorState createState() => _EmployerNavigatorState();
}

class _EmployerNavigatorState extends State<EmployerNavigator> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    HomePageEmployer(),
    EmployerTabs(),
    EditPost(),
    ChatListEmployer(),
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
                    fontFamily: 'VarelaRound',
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal)),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.accountBadgeHorizontalOutline, size: 24),
            title: Text('APPLICANTS',
                style: TextStyle(
                    fontFamily: 'VarelaRound',
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal)),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.plusCircleOutline, size: 24),
            title: Text('POST JOB',
                style: TextStyle(
                    fontFamily: 'VarelaRound',
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal)),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.messageSquare, size: 24),
            title: Text('INBOX',
                style: TextStyle(
                    fontFamily: 'VarelaRound',
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal)),
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.bell, size: 24),
            title: Text('NOTIFICATION',
                style: TextStyle(
                    fontFamily: 'VarelaRound',
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal)),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }
}
