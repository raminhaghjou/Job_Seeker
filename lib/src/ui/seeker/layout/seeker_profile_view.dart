import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class SeekerProfileView extends StatefulWidget {
  @override
  _SeekerProfileViewState createState() => _SeekerProfileViewState();
}

class _SeekerProfileViewState extends State<SeekerProfileView>
    with SingleTickerProviderStateMixin {
  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/vector-5.png'),
            alignment: AlignmentDirectional.topEnd,
            fit: BoxFit.cover),
      ),
      child: Scaffold(
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Container(
                                    height: 30,
                                    padding: EdgeInsets.all(5),
                                    child: RaisedButton(
                                      color: Colors.white,
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(30.0)),
                                      child: Text('#restaurant',
                                          style: style.copyWith(fontSize: 12)),
                                      onPressed: () {},
                                    )),
                                Container(
                                    height: 30,
                                    padding: EdgeInsets.all(5),
                                    child: RaisedButton(
                                      color: Colors.white,
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(30.0)),
                                      child: Text('#ramen',
                                          style: style.copyWith(fontSize: 12)),
                                      onPressed: () {},
                                    )),
                                Container(
                                    height: 30,
                                    padding: EdgeInsets.all(5),
                                    child: RaisedButton(
                                      color: Colors.white,
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(30.0)),
                                      child: Text('#chef',
                                          style: style.copyWith(fontSize: 12)),
                                      onPressed: () {},
                                    )),
                                Container(
                                    height: 30,
                                    padding: EdgeInsets.all(5),
                                    child: RaisedButton(
                                      color: Colors.white,
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(30.0)),
                                      child: Text('#japanese',
                                          style: style.copyWith(fontSize: 12)),
                                      onPressed: () {},
                                    )),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
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
                                child: Image.asset('assets/icon6.png',
                                    scale: 3.5)),
                            title: Text('Address',
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
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
