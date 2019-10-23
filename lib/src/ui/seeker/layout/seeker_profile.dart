import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:space/src/ui/settings/setting_ui_payment.dart';
import 'package:space/src/ui/settings/settings_notification.dart';
import 'package:space/src/ui/seeker/layout/seeker_profile_setting.dart';
import 'package:space/src/ui/settings/setting_ui_help.dart';
import 'package:space/src/ui/settings/settings_ui_invite_friends.dart';
import 'package:space/src/ui/settings/about_us.dart';
import 'package:space/src/ui/seeker/layout/seeker_profile_view.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => SeekerProfile(),
      'space/settings_notification': (context) => SettingNotification(),
      'space/seeker_profile_setting': (context) => SettingSeekerProfile(),
      'space/setting_ui_help': (context) => SettingUiHelp(),
      'space/settings_ui_invite_friends': (context) => UiInviteFriends(),
      'space/about_us': (context) => AboutUs(),
      'space/seeker_profile_view': (context) => SeekerProfileView(),
      'space/setting_payment_method': (context) => SettingUIPayment(),
    },
  ));
}

class SeekerProfile extends StatefulWidget {
  @override
  _SeekerProfileState createState() => _SeekerProfileState();
}

class _SeekerProfileState extends State<SeekerProfile>
    with SingleTickerProviderStateMixin {
  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return Scaffold(
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 40, bottom: 15),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new SeekerProfileView()));
                      },
                      leading: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Nakamura Chan',
                              style: style.copyWith(
                                  fontSize: 20, color: Color(0xff3b3b3b))),
                          Text('View and Edit Profile',
                              style: style.copyWith(
                                  fontSize: 12, color: Color(0xff3b3b3b))),
                        ],
                      ),
                      trailing: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40.0,
                        child: Image.asset(
                          'assets/img_profile-2.png',
                          height: 75,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 0,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      color: Color(0xffc9c8c8),
                    ),
                  ),
                  ListTile(
                    title: Text('Notification',
                        style: style.copyWith(color: Color(0xff757575))),
                    trailing: Icon(FeatherIcons.bell, color: Color(0xff4d4d4d)),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingNotification()));
                    },
                  ),
                  Container(
                    height: 0,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Color(0xffc9c8c8)),
                  ),
                  ListTile(
                      title: Text('Profile Setting',
                          style: style.copyWith(color: Color(0xff757575))),
                      trailing:
                          Icon(FeatherIcons.user, color: Color(0xff4d4d4d)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingSeekerProfile()),
                        );
                      }),
                  Container(
                    height: 0,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Color(0xffc9c8c8)),
                  ),
                  ListTile(
                      title: Text('Settings',
                          style: style.copyWith(color: Color(0xff757575))),
                      trailing:
                          Icon(FeatherIcons.settings, color: Color(0xff4d4d4d)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingUIPayment()),
                        );
                      }),
                  Container(
                    height: 0,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Color(0xffc9c8c8)),
                  ),
                  ListTile(
                      title: Text('Help?',
                          style: style.copyWith(color: Color(0xff757575))),
                      trailing:
                          Icon(FeatherIcons.info, color: Color(0xff4d4d4d)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingUiHelp()),
                        );
                      }),
                  Container(
                    height: 0,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Color(0xffc9c8c8)),
                  ),
                  ListTile(
                      title: Text('Feedback Us',
                          style: style.copyWith(color: Color(0xff757575))),
                      trailing:
                          Icon(FeatherIcons.send, color: Color(0xff4d4d4d)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AboutUs()),
                        );
                      }),
                  Container(
                    height: 0,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Color(0xffc9c8c8)),
                  ),
                  ListTile(
                      title: Text('Invite Friends',
                          style: style.copyWith(color: Color(0xff757575))),
                      trailing:
                          Icon(FeatherIcons.users, color: Color(0xff4d4d4d)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UiInviteFriends()),
                        );
                      }),
                  Container(
                    height: 0,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Color(0xffc9c8c8)),
                  ),
                  ListTile(
                      title: Text('FAQ',
                          style: style.copyWith(color: Color(0xff757575))),
                      trailing: Icon(FeatherIcons.helpCircle,
                          color: Color(0xff4d4d4d)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AboutUs()),
                        );
                      }),
                  Container(
                    height: 0,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Color(0xffc9c8c8)),
                  ),
                  ListTile(
                      title: Text('Abous Us',
                          style: style.copyWith(color: Color(0xff757575))),
                      trailing: Icon(FontAwesomeIcons.userTie,
                          color: Color(0xff4d4d4d)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AboutUs()),
                        );
                      }),
                  Container(
                    height: 0,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(color: Color(0xffc9c8c8)),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
