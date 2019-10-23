import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter_svg/svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SeekerProfileView extends StatefulWidget {
  @override
  _SeekerProfileViewState createState() => _SeekerProfileViewState();
}

class _SeekerProfileViewState extends State<SeekerProfileView>
    with SingleTickerProviderStateMixin {
  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SvgPicture.asset('assets/vector-5.svg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: true,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                icon: Icon(FeatherIcons.chevronLeft,
                    color: Colors.white, size: 16)),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: SingleChildScrollView(
            child: LayoutBuilder(builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsetsDirectional.only(bottom: 10),
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        minRadius: 40,
                        maxRadius: 45,
                        child:
                            Image.asset('assets/img_profile-2.png', scale: 1.4),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: <Widget>[
                          Text('Nakamura Chan',
                              style: style.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(FeatherIcons.mapPin,
                                  size: 10, color: Colors.white),
                              Text(' Pontianak, West Borneo',
                                  style: style.copyWith(
                                      fontSize: 12,
                                      color: Colors.white,
                                      height: 2))
                            ],
                          ),
                        ],
                      ),
                    ),
                    new Center(),
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
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(bottom: 20),
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
                          Padding(
                            padding:
                                EdgeInsets.only(left: 20, right: 20, top: 10),
                            child: ListTile(
                              leading: Padding(
                                  padding: EdgeInsets.only(top: 3),
                                  child: Image.asset('assets/icon5.png',
                                      scale: 3.5)),
                              title: Text('Gender',
                                  style: style.copyWith(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text('Male',
                                  style: style.copyWith(
                                      color: Color(0xff757575), fontSize: 16)),
                            ),
                          ),
                          Container(
                            height: 0,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            child: Divider(color: Color(0xffc9c8c8)),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: ListTile(
                              leading: Padding(
                                  padding: EdgeInsets.only(top: 3),
                                  child: Image.asset('assets/icon21.png',
                                      scale: 40)),
                              title: Text('Status',
                                  style: style.copyWith(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text('Married',
                                  style: style.copyWith(
                                      color: Color(0xff757575), fontSize: 16)),
                            ),
                          ),
                          Container(
                            height: 0,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            child: Divider(color: Color(0xffc9c8c8)),
                          ),
                          Container(
                            height: 0,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            child: Divider(color: Color(0xffc9c8c8)),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: ListTile(
                              leading: Padding(
                                  padding: EdgeInsets.only(top: 3),
                                  child: Image.asset('assets/icon20.png',
                                      scale: 1)),
                              title: Text('Religion',
                                  style: style.copyWith(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text('Buddha',
                                  style: style.copyWith(
                                      color: Color(0xff757575), fontSize: 16)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: ListTile(
                              leading: Padding(
                                  padding: EdgeInsets.only(top: 3),
                                  child: Image.asset('assets/icon3.png',
                                      scale: 3.5)),
                              title: Text('Age',
                                  style: style.copyWith(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text('30 Years Old',
                                  style: style.copyWith(
                                      color: Color(0xff757575), fontSize: 16)),
                            ),
                          ),
                          Container(
                            height: 0,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            child: Divider(color: Color(0xffc9c8c8)),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: ListTile(
                              leading: Padding(
                                  padding: EdgeInsets.only(top: 3),
                                  child: Image.asset('assets/icon6.png',
                                      scale: 3.5)),
                              title: Text('City',
                                  style: style.copyWith(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text('Pontianak, West Borneo',
                                  style: style.copyWith(
                                      color: Color(0xff757575), fontSize: 16)),
                            ),
                          ),
                          Container(
                            height: 0,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            child: Divider(color: Color(0xffc9c8c8)),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: ListTile(
                              leading: Padding(
                                  padding: EdgeInsets.only(top: 3),
                                  child: Image.asset('assets/icon8.png',
                                      scale: 3.5)),
                              title: Text('Education',
                                  style: style.copyWith(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text('High School',
                                  style: style.copyWith(
                                      color: Color(0xff757575), fontSize: 16)),
                            ),
                          ),
                          Container(
                            height: 0,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            child: Divider(color: Color(0xffc9c8c8)),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: ListTile(
                              leading: Padding(
                                  padding: EdgeInsets.only(top: 3),
                                  child: Image.asset('assets/icon18.png',
                                      scale: 2)),
                              title: Text('Course',
                                  style: style.copyWith(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text('Hospitality',
                                  style: style.copyWith(
                                      color: Color(0xff757575), fontSize: 16)),
                            ),
                          ),
                          Container(
                            height: 0,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            child: Divider(color: Color(0xffc9c8c8)),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: ListTile(
                              leading: Padding(
                                  padding: EdgeInsets.only(top: 3),
                                  child: Image.asset('assets/icon4.png',
                                      scale: 3.5)),
                              title: Text('Experience',
                                  style: style.copyWith(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text('10 Years as Chef',
                                  style: style.copyWith(
                                      color: Color(0xff757575), fontSize: 16)),
                            ),
                          ),
                          Container(
                            height: 0,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            child: Divider(color: Color(0xffc9c8c8)),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: ListTile(
                              leading: Padding(
                                  padding: EdgeInsets.only(top: 3),
                                  child: Image.asset('assets/icon4.png',
                                      scale: 3.5)),
                              title: Text('Experience',
                                  style: style.copyWith(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text('15 Years as Cook',
                                  style: style.copyWith(
                                      color: Color(0xff757575), fontSize: 16)),
                            ),
                          ),
                          Container(
                            height: 0,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            child: Divider(color: Color(0xffc9c8c8)),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: ListTile(
                              leading: Padding(
                                  padding: EdgeInsets.only(top: 3),
                                  child: Image.asset('assets/icon7.png',
                                      scale: 3.5)),
                              title: Text('Current Job',
                                  style: style.copyWith(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text('Full Time Chef',
                                  style: style.copyWith(
                                      color: Color(0xff757575), fontSize: 16)),
                            ),
                          ),
                          Container(
                            height: 0,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            child: Divider(color: Color(0xffc9c8c8)),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Padding(
                                      padding: EdgeInsets.only(top: 3),
                                      child: Image.asset('assets/icon19.png',
                                          scale: 2.8)),
                                  title: Text('ID Card',
                                      style: style.copyWith(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  subtitle: Text('View Attachment',
                                      style: style.copyWith(
                                          color: Color(0xff757575),
                                          fontSize: 16)),
                                  trailing: Icon(MdiIcons.chevronUp),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets/ktp.jpg'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 20,
                            padding: EdgeInsets.symmetric(horizontal: 17),
                            child: Divider(color: Color(0xffc9c8c8)),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 90),
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              color: Color(0xff22c0e8),
                              onPressed: () {},
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    MdiIcons.emailOutline,
                                    color: Colors.white,
                                  ),
                                  Text('  Send Message',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white)),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
