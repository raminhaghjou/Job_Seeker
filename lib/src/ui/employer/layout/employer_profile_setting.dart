import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class EmployerProfileSetting extends StatefulWidget {
  @override
  _EmployerProfileSettingState createState() => _EmployerProfileSettingState();
}

class _EmployerProfileSettingState extends State<EmployerProfileSetting>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              icon: Icon(FeatherIcons.chevronLeft,
                  color: Color(0xff2c4057), size: 16)),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('Employers Profile',
              style: style.copyWith(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              )),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(30.0),
              topRight: const Radius.circular(30.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                  onTap: () {},
                  leading: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Full Name',
                          style: style.copyWith(
                              color: Color(0xff757575), fontSize: 14)),
                      Text('Nakamura Chan',
                          style: style.copyWith(
                              color: Color(0xff757575), fontSize: 12)),
                      Icon(FeatherIcons.chevronRight,
                          color: Color(0xff757575), size: 20),
                    ],
                  )),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Color(0xffdcdcdc),
          showUnselectedLabels: true,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(FeatherIcons.home, size: 30),
              title: Text('HOME',
                  style: TextStyle(
                      fontFamily: 'VarelaRound',
                      color: Color(0xff3b3b3b),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal)),
            ),
            BottomNavigationBarItem(
              icon: Icon(FeatherIcons.briefcase, size: 30),
              title: Text('JOBS',
                  style: TextStyle(
                      fontFamily: 'VarelaRound',
                      color: Color(0xff3b3b3b),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal)),
            ),
            BottomNavigationBarItem(
              icon: Icon(FeatherIcons.search, size: 30),
              title: Text('SEARCH',
                  style: TextStyle(
                      fontFamily: 'VarelaRound',
                      color: Color(0xff3b3b3b),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal)),
            ),
            BottomNavigationBarItem(
              icon: Icon(FeatherIcons.messageSquare, size: 30),
              title: Text('INBOX',
                  style: TextStyle(
                      fontFamily: 'VarelaRound',
                      color: Color(0xff3b3b3b),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal)),
            ),
            BottomNavigationBarItem(
              icon: Icon(FeatherIcons.user, size: 30),
              title: Text('PROFILE',
                  style: TextStyle(
                      fontFamily: 'VarelaRound',
                      color: Color(0xff3b3b3b),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal)),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xff4d4d4d),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
