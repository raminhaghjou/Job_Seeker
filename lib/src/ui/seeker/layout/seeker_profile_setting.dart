import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class SettingSeekerProfile extends StatefulWidget {
  @override
  _SettingSeekerProfileState createState() => _SettingSeekerProfileState();
}

class _SettingSeekerProfileState extends State<SettingSeekerProfile>
    with SingleTickerProviderStateMixin {
  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return Container(
        decoration: new BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/vector-5.png')),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: true,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                icon: Icon(
                  FeatherIcons.chevronLeft,
                  color: Colors.white,
                  size: 16,
                )),
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text('Profile Setting',
                style: style.copyWith(
                  color: Colors.white,
                  fontSize: 14,
                  letterSpacing: 1,
                )),
          ),
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
                      padding: EdgeInsetsDirectional.only(bottom: 20),
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40.0,
                        child:
                            Image.asset('assets/img_profile-2.png', height: 75),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: <Widget>[
                          Text('Nakamura Chan',
                              style: style.copyWith(
                                  fontSize: 15, color: Colors.white)),
                          Text('30',
                              style: style.copyWith(
                                  fontSize: 15, color: Colors.white)),
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
                                                style.copyWith(fontSize: 12)),
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
                                                style.copyWith(fontSize: 12)),
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
                                                style.copyWith(fontSize: 12)),
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
                                                style.copyWith(fontSize: 12)),
                                        onPressed: () {},
                                      )),
                                ],
                              )),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
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
                            leading: Container(
                              width: 120,
                              alignment: Alignment.centerLeft,
                              child: Text('Full Name',
                                  style: style.copyWith(
                                      color: Color(0xff757575), fontSize: 14)),
                            ),
                            title: Text('Nakamura Chan',
                                style: style.copyWith(
                                    color: Color(0xff757575), fontSize: 13)),
                            trailing: Icon(FeatherIcons.chevronRight,
                                color: Color(0xff757575), size: 20),
                          ),
                          Container(
                            height: 0,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            child: Divider(color: Color(0xffc9c8c8)),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: Container(
                              width: 120,
                              alignment: Alignment.centerLeft,
                              child: Text('Address',
                                  style: style.copyWith(
                                      color: Color(0xff757575), fontSize: 14)),
                            ),
                            title: Text('Jl. Ketapang no 87D, Pontianak',
                                style: style.copyWith(
                                    color: Color(0xff757575), fontSize: 13)),
                            trailing: Icon(FeatherIcons.chevronRight,
                                color: Color(0xff757575), size: 20),
                          ),
                          Container(
                            height: 0,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            child: Divider(color: Color(0xffc9c8c8)),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: Container(
                              width: 120,
                              alignment: Alignment.centerLeft,
                              child: Text('Gender',
                                  style: style.copyWith(
                                      color: Color(0xff757575), fontSize: 14)),
                            ),
                            title: Text('Male',
                                style: style.copyWith(
                                    color: Color(0xff757575), fontSize: 13)),
                            trailing: Icon(FeatherIcons.chevronRight,
                                color: Color(0xff757575), size: 20),
                          ),
                          Container(
                            height: 0,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            child: Divider(color: Color(0xffc9c8c8)),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: Container(
                              width: 120,
                              alignment: Alignment.centerLeft,
                              child: Text('Date of Birth',
                                  style: style.copyWith(
                                      color: Color(0xff757575), fontSize: 14)),
                            ),
                            title: Text('31 December 1989',
                                style: style.copyWith(
                                    color: Color(0xff757575), fontSize: 13)),
                            trailing: Icon(FeatherIcons.chevronRight,
                                color: Color(0xff757575), size: 20),
                          ),
                          Container(
                            height: 0,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            child: Divider(color: Color(0xffc9c8c8)),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: Container(
                              width: 120,
                              alignment: Alignment.centerLeft,
                              child: Text('Education',
                                  style: style.copyWith(
                                      color: Color(0xff757575), fontSize: 14)),
                            ),
                            title: Text('High School',
                                style: style.copyWith(
                                    color: Color(0xff757575), fontSize: 13)),
                            trailing: Icon(FeatherIcons.chevronRight,
                                color: Color(0xff757575), size: 20),
                          ),
                          Container(
                            height: 0,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            child: Divider(color: Color(0xffc9c8c8)),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: Container(
                              width: 120,
                              alignment: Alignment.centerLeft,
                              child: Text('Experience',
                                  style: style.copyWith(
                                      color: Color(0xff757575), fontSize: 14)),
                            ),
                            title: Text('2 Years as Barista',
                                style: style.copyWith(
                                    color: Color(0xff757575), fontSize: 13)),
                            trailing: Icon(FeatherIcons.chevronRight,
                                color: Color(0xff757575), size: 20),
                          ),
                          Container(
                            height: 0,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            child: Divider(color: Color(0xffc9c8c8)),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: Container(
                              width: 120,
                              alignment: Alignment.centerLeft,
                              child: Text('Current',
                                  style: style.copyWith(
                                      color: Color(0xff757575), fontSize: 14)),
                            ),
                            title: Text('1 Years as Head Chef',
                                style: style.copyWith(
                                    color: Color(0xff757575), fontSize: 13)),
                            trailing: Icon(FeatherIcons.chevronRight,
                                color: Color(0xff757575), size: 20),
                          ),
                          Container(
                            height: 0,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            child: Divider(color: Color(0xffc9c8c8)),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: Container(
                              width: 120,
                              alignment: Alignment.centerLeft,
                              child: Text('Upload Resume',
                                  style: style.copyWith(
                                      color: Color(0xff757575), fontSize: 14)),
                            ),
                            title: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: 'CV.PDF - ',
                                  style: style.copyWith(
                                      color: Color(0xff9faab6), fontSize: 13)),
                              TextSpan(
                                  text: 'successful uploaded',
                                  style: style.copyWith(
                                      color: Color(0xff57b22f), fontSize: 13)),
                            ])),
                            trailing: Icon(FeatherIcons.chevronRight,
                                color: Color(0xff757575), size: 20),
                          ),
                          Container(
                            height: 0,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            child: Divider(color: Color(0xffc9c8c8)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
