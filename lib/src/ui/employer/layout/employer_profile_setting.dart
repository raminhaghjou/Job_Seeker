import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EmployerProfileSetting extends StatefulWidget {
  @override
  _EmployerProfileSettingState createState() => _EmployerProfileSettingState();
}

class _EmployerProfileSettingState extends State<EmployerProfileSetting>
    with SingleTickerProviderStateMixin {
  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[100],
      child: Stack(
        children: <Widget>[
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/ketapang.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Scaffold(
            backgroundColor: Colors.black12,
            appBar: AppBar(
              automaticallyImplyLeading: true,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  icon: Icon(FeatherIcons.chevronLeft,
                      color: Colors.white, size: 16)),
              elevation: 0,
              backgroundColor: Colors.black26,
            ),
            body: Container(
              child: Stack(
                children: <Widget>[
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsetsDirectional.only(bottom: 10),
                        alignment: Alignment.topCenter,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/mekuru.png'),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: <Widget>[
                            Text('Mekuru Ramen',
                                style: style.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Text('The Best Ramen in Town',
                                style: style.copyWith(
                                    fontSize: 12,
                                    color: Colors.white,
                                    height: 2))
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Container(
                                        height: 30,
                                        padding: EdgeInsets.all(5),
                                        child: RaisedButton(
                                          color: Colors.white,
                                          shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      30.0)),
                                          child: Text('#restaurant',
                                              style:
                                                  style.copyWith(fontSize: 12, color: Color(0xff898989))),
                                          onPressed: () {},
                                        )),
                                    Container(
                                        height: 30,
                                        padding: EdgeInsets.all(5),
                                        child: RaisedButton(
                                          color: Colors.white,
                                          shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      30.0)),
                                          child: Text('#ramen',
                                              style:
                                                  style.copyWith(fontSize: 12, color: Color(0xff898989))),
                                          onPressed: () {},
                                        )),
                                    Container(
                                        height: 30,
                                        padding: EdgeInsets.all(5),
                                        child: RaisedButton(
                                          color: Colors.white,
                                          shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      30.0)),
                                          child: Text('#chef',
                                              style:
                                                  style.copyWith(fontSize: 12, color: Color(0xff898989))),
                                          onPressed: () {},
                                        )),
                                    Container(
                                        height: 30,
                                        padding: EdgeInsets.all(5),
                                        child: RaisedButton(
                                          color: Colors.white,
                                          shape: new RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      30.0)),
                                          child: Text('#japanese',
                                              style:
                                                  style.copyWith(fontSize: 12, color: Color(0xff898989))),
                                          onPressed: () {},
                                        )),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 155),
                    padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0))),
                    child: ListView(
                      children: <Widget>[
                        Container(
                          height: 35,
                          child: ListTile(
                            onTap: (){},
                            leading: Text(
                              'Company Name',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff757575),
                                  fontFamily: 'VarelaRound'),
                            ),
                            title: Padding(
                              padding: EdgeInsets.only(bottom: 6),
                              child: Text(
                                'Mekuru Ramen',
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff757575),
                                    fontFamily: 'VarelaRound'),
                              ),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: Icon(
                                MdiIcons.chevronRight,
                                color: Color(0xff757575),
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Divider(
                            height: 0,
                            endIndent: 20,
                            indent: 18,
                          ),
                        ),
                        Container(
                          height: 35,
                          child: ListTile(
                            onTap: (){},
                            leading: Text(
                              'Tagline',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff757575),
                                  fontFamily: 'VarelaRound'),
                            ),
                            title: Padding(
                              padding: EdgeInsets.only(bottom: 6),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 60.0),
                                child: Text(
                                  'The Best Ramen in Town',
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff757575),
                                      fontFamily: 'VarelaRound'),
                                ),
                              ),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: Icon(
                                MdiIcons.chevronRight,
                                color: Color(0xff757575),
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Divider(
                            height: 0,
                            endIndent: 20,
                            indent: 18,
                          ),
                        ),
                        Container(
                          height: 35,
                          child: ListTile(
                            onTap: (){},
                            leading: Text(
                              'Address',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff757575),
                                  fontFamily: 'VarelaRound'),
                            ),
                            title: Padding(
                              padding: EdgeInsets.only(bottom: 6),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 54.0),
                                child: Text(
                                  'Jl. Jendral Urip no.3, Pontianak Kalimantan Barat',
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff757575),
                                      fontFamily: 'VarelaRound'),
                                ),
                              ),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: Icon(
                                MdiIcons.chevronRight,
                                color: Color(0xff757575),
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Divider(
                            height: 0,
                            endIndent: 20,
                            indent: 18,
                          ),
                        ),
                        Container(
                          height: 35,
                          child: ListTile(
                            onTap: (){},
                            leading: Text(
                              'Industry',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff757575),
                                  fontFamily: 'VarelaRound'),
                            ),
                            title: Padding(
                              padding: EdgeInsets.only(left: 54),
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 6),
                                child: Text(
                                  'Food & Beverages',
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff757575),
                                      fontFamily: 'VarelaRound'),
                                ),
                              ),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: Icon(
                                MdiIcons.chevronRight,
                                color: Color(0xff757575),
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Divider(
                            height: 0,
                            endIndent: 20,
                            indent: 18,
                          ),
                        ),
                        Container(
                          height: 35,
                          child: ListTile(
                            onTap: (){},
                            leading: Text(
                              'Establish',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff757575),
                                  fontFamily: 'VarelaRound'),
                            ),
                            title: Padding(
                              padding: EdgeInsets.only(left: 49),
                              child: Padding(
                              padding: EdgeInsets.only(bottom: 6),
                              child: Text(
                                '26 December 2009',
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff757575),
                                    fontFamily: 'VarelaRound'),
                              ),
                            ),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: Icon(
                                MdiIcons.chevronRight,
                                color: Color(0xff757575),
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Divider(
                            height: 0,
                            endIndent: 20,
                            indent: 18,
                          ),
                        ),
                        Container(
                          height: 35,
                          child: ListTile(
                            onTap: (){},
                            leading: Text(
                              'Description',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff757575),
                                  fontFamily: 'VarelaRound'),
                            ),
                            title: Padding(
                              padding: EdgeInsets.only(left: 33),
                              child: Padding(
                              padding: EdgeInsets.only(bottom: 6),
                              child: Text(
                                'A japanese restaurant with...',
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff757575),
                                    fontFamily: 'VarelaRound'),
                              ),
                            ),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: Icon(
                                MdiIcons.chevronRight,
                                color: Color(0xff757575),
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Divider(
                            height: 0,
                            endIndent: 20,
                            indent: 18,
                          ),
                        ),
                        Container(
                          height: 35,
                          child: ListTile(
                            onTap: (){},
                            leading: Text(
                              'Recent Jobs',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff757575),
                                  fontFamily: 'VarelaRound'),
                            ),
                            title: Padding(
                              padding: EdgeInsets.only(left: 29),
                              child: Padding(
                              padding: EdgeInsets.only(bottom: 6),
                              child: Text(
                                '22 Jobs posted previously',
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff757575),
                                    fontFamily: 'VarelaRound'),
                              ),
                            ),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: Icon(
                                MdiIcons.chevronRight,
                                color: Color(0xff757575),
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Divider(
                            height: 0,
                            endIndent: 20,
                            indent: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
