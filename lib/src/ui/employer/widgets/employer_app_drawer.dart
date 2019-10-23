import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:space/src/core/models/auth.dart';
import 'package:space/src/ui/employer/layout/employer_profile_setting.dart';
import 'package:space/src/ui/employer/layout/employer_profile_view.dart';
import 'package:space/src/ui/settings/about_us.dart';
import 'package:space/src/ui/settings/setting_ui_help.dart';
import 'package:space/src/ui/settings/setting_ui_payment.dart';
import 'package:space/src/ui/settings/settings_notification.dart';
import 'package:space/src/ui/settings/settings_ui_invite_friends.dart';

class EmployerDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmployerProfileView()));
                },
                leading: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mekuru Ramen',
                        style:
                            TextStyle(fontSize: 18, color: Colors.black, height: 2)),
                    Text('View and Edit Profile',
                        style:
                            TextStyle(fontSize: 10, color: Colors.black)),
                  ],
                ),
                trailing: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Image.asset(
                    'assets/mekuru.png',
                    height: 75,
                  ),
                ),
              ),
            ),
            Container(
              height: 0,
              child: Divider(
                color: Color(0xffc9c8c8),
              ),
            ),
            Container(
              height: 50,
              child: ListTile(
                title: Text('Notification',
                    style: TextStyle(
                        color: Color(0xff757575), fontSize: 12, height: 0.5)),
                trailing: Padding(
                    padding: EdgeInsets.only(bottom: 5, right: 5),
                    child: Icon(MdiIcons.bellOutline,
                        color: Color(0xff4d4d4d), size: 18)),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SettingNotification()));
                },
              ),
            ),
            Container(
              height: 0,
              child: Divider(color: Color(0xffc9c8c8)),
            ),
            Container(
              height: 50,
              child: ListTile(
                  title: Text('Profile Setting',
                      style: TextStyle(color: Color(0xff757575), fontSize: 12)),
                  trailing: Padding(
                      padding: EdgeInsets.only(bottom: 5, right: 5),
                      child: Icon(MdiIcons.accountEditOutline,
                          color: Color(0xff4d4d4d), size: 18)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmployerProfileSetting()),
                    );
                  }),
            ),
            Container(
              height: 0,
              child: Divider(color: Color(0xffc9c8c8)),
            ),
            Container(
              height: 50,
              child: ListTile(
                  title: Text('Settings',
                      style: TextStyle(color: Color(0xff757575), fontSize: 12)),
                  trailing: Padding(
                      padding: EdgeInsets.only(bottom: 5, right: 5),
                      child: Icon(MdiIcons.settingsOutline,
                          color: Color(0xff4d4d4d), size: 18)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SettingUIPayment()),
                    );
                  }),
            ),
            Container(
              height: 0,
              child: Divider(color: Color(0xffc9c8c8)),
            ),
            Container(
              height: 50,
              child: ListTile(
                  title: Text('Help?',
                      style: TextStyle(color: Color(0xff757575), fontSize: 12)),
                  trailing: Padding(
                      padding: EdgeInsets.only(bottom: 5, right: 5),
                      child: Icon(MdiIcons.accountQuestionOutline,
                          color: Color(0xff4d4d4d), size: 18)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingUiHelp()),
                    );
                  }),
            ),
            Container(
              height: 0,
              child: Divider(color: Color(0xffc9c8c8)),
            ),
            Container(
              height: 50,
              child: ListTile(
                  title: Text('Feedback Us',
                      style: TextStyle(color: Color(0xff757575), fontSize: 12)),
                  trailing: Padding(
                      padding: EdgeInsets.only(bottom: 5, right: 5),
                      child: Icon(MdiIcons.sendCircleOutline,
                          color: Color(0xff4d4d4d), size: 20)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutUs()),
                    );
                  }),
            ),
            Container(
              height: 0,
              child: Divider(color: Color(0xffc9c8c8)),
            ),
            Container(
              height: 50,
              child: ListTile(
                  title: Text('Invite Friends',
                      style: TextStyle(color: Color(0xff757575), fontSize: 12)),
                  trailing: Padding(
                      padding: EdgeInsets.only(bottom: 5, right: 5),
                      child: Icon(MdiIcons.accountMultiplePlusOutline,
                          color: Color(0xff4d4d4d), size: 18)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UiInviteFriends()),
                    );
                  }),
            ),
            Container(
              height: 0,
              child: Divider(color: Color(0xffc9c8c8)),
            ),
            Container(
              height: 50,
              child: ListTile(
                  title: Text('FAQ',
                      style: TextStyle(color: Color(0xff757575), fontSize: 12)),
                  trailing: Padding(
                      padding: EdgeInsets.only(bottom: 5, right: 5),
                      child: Icon(MdiIcons.helpCircleOutline,
                          color: Color(0xff4d4d4d), size: 18)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutUs()),
                    );
                  }),
            ),
            Container(
              height: 0,
              child: Divider(color: Color(0xffc9c8c8)),
            ),
            Container(
              height: 50,
              child: ListTile(
                  title: Text('Abous Us',
                      style: TextStyle(color: Color(0xff757575), fontSize: 12)),
                  trailing: Padding(
                      padding: EdgeInsets.only(bottom: 5, right: 5),
                      child: Icon(MdiIcons.accountGroupOutline,
                          color: Color(0xff4d4d4d), size: 18)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutUs()),
                    );
                  }),
            ),
            Container(
              height: 0,
              child: Divider(color: Color(0xffc9c8c8)),
            ),
            Container(
              height: 50,
              child: ListTile(
                  title: Text('Log Out',
                      style: TextStyle(color: Color(0xff757575), fontSize: 12)),
                  trailing: Padding(
                      padding: EdgeInsets.only(bottom: 5, right: 5),
                      child: Icon(MdiIcons.logoutVariant,
                          color: Color(0xff4d4d4d), size: 18)),
                  onTap: () {
                    Navigator.of(context).pop();
                    Provider.of<Auth>(context, listen: false).logout();
                  }),
            ),
            Container(
              height: 0,
              child: Divider(color: Color(0xffc9c8c8)),
            ),
          ],
        ),
      ),
    );
  }
}
