import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SettingUiHelp extends StatefulWidget {
  const SettingUiHelp({Key key, String title}) : super(key: key);
  @override
  _SettingUiHelpState createState() => _SettingUiHelpState();
}

class _SettingUiHelpState extends State<SettingUiHelp>
    with SingleTickerProviderStateMixin {
  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 16.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              icon: Icon(FeatherIcons.chevronLeft,
                  color: Color(0xff2c4057), size: 14)),
          elevation: 1,
          backgroundColor: Colors.white,
          title: Text('Help',
              style: style.copyWith(
                color: Color(0xff2c4057),
                fontSize: 12,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              )),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Help',
                        style: style.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff3b3b3b),
                            fontSize: 16)),
                    Text('Get in touch',
                        style: style.copyWith(
                            fontSize: 12, color: Color(0xff3b3b3b))),
                  ],
                ),
              ),
              Container(
                color: Color(0xffdedede),
                height: 200,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                        width: 120,
                        child: Image.asset(
                          'assets/logo_vertical.png',
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(MdiIcons.mapMarkerOutline,
                                    size: 18, color: Color(0xff010101)),
                                Text(
                                  '  PELNI Tower, 2nd Floor, Jl. Sultan Abdurahman no 123,',
                                  style: style.copyWith(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff010101),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 24.0),
                                  child: Text(
                                      'Pontianak West Borneo, Indonesia',
                                      style: style.copyWith(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff010101))),
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(MdiIcons.emailOutline,
                                    size: 18,
                                    ),
                                    Text('  mail@LogoName.com',
                                        style: style.copyWith(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff010101),
                                            height: 2)),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(MdiIcons.facebookBox,
                                    size: 18,
                                    ),
                                    Text('  LogoName Indonesia',
                                        style: style.copyWith(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff010101),
                                            height: 2)),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(MdiIcons.instagram,
                                    size: 18,
                                    ),
                                    Text('  LogoName Indonesia',
                                        style: style.copyWith(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff010101),
                                            height: 2)),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(MdiIcons.whatsapp,
                                    size: 18,
                                    ),
                                    Text('  +62 812 3456 7890',
                                        style: style.copyWith(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff010101),
                                            height: 2)),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
