import 'package:carousel_slider/carousel_slider.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'package:space/src/ui/employer/widgets/employer_app_drawer.dart';
import 'package:space/src/ui/components/horizontal_screen.dart';
import 'package:space/src/ui/components/recommended_screen.dart';
import 'package:space/src/ui/seeker/layout/seeker_profile_view.dart';

class HomePageEmployer extends StatefulWidget {
  static const routeName = '/home_page_employer';

  @override
  _HomePageEmployerState createState() => _HomePageEmployerState();
}

class _HomePageEmployerState extends State<HomePageEmployer> {
  TextStyle style = TextStyle(
      fontFamily: 'VarelaRound', fontSize: 20.0, color: Color(0xff3b3b3b));
  TextStyle style2 = TextStyle(
      fontFamily: 'TitilliumWeb', fontSize: 20.0, color: Color(0xff3b3b3b));
  int _current = 0;

  final List<Widget> imgList = [
    Image.asset('assets/home.png', fit: BoxFit.contain),
    Image.asset('assets/vector-3.png', fit: BoxFit.contain),
    Image.asset('assets/job.png', fit: BoxFit.contain),
    Image.asset('assets/job2.png', fit: BoxFit.contain),
    Image.asset('assets/blog.png', fit: BoxFit.contain),
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: EmployerDrawer(),
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.grey[200],
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: TextFormField(
          textInputAction: TextInputAction.search,
          style: style.copyWith(
            fontSize: 16,
            color: Color(0xffc9c8c8),
            decoration: TextDecoration.none,
          ),
          decoration: InputDecoration(
              focusedBorder: InputBorder.none,
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FeatherIcons.search,
                    size: 18,
                  ),
                  color: Color(0xffc9c8c8)),
              fillColor: Colors.white,
              filled: true,
              hintText: 'Try "Barista"',
              hintStyle: style.copyWith(color: Color(0xffc9c8c8), fontSize: 16),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffc5cfda)),
              )),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(children: [
                  CarouselSlider(
                    items: imgList,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index) {
                      setState(() {
                        _current = index;
                      });
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: map<Widget>(
                            imgList,
                            (index, url) {
                              return Container(
                                width: 8.0,
                                height: 8.0,
                                margin: EdgeInsets.symmetric(horizontal: 2.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _current == index
                                        ? Color.fromRGBO(0, 0, 0, 0.9)
                                        : Color.fromRGBO(0, 0, 0, 0.4)),
                              );
                            },
                          ),
                        ),
                        Text('See All',
                            style: style2.copyWith(
                                fontSize: 10,
                                color: Color(0xffc9c8c8),
                                letterSpacing: 1)),
                      ],
                    ),
                  ),
                ]),
                SizedBox(height: 10),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 45,
                    child: ListTile(
                      leading: Container(
                          child: Text('Recent Job',
                              style: style2.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1))),
                      trailing: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Text('See All',
                              style: style2.copyWith(
                                  fontSize: 10,
                                  color: Color(0xffc9c8c8),
                                  letterSpacing: 1))),
                      onTap: () {},
                    )),
                SizedBox(height: 180, child: HorizontalScreen()),
                Container(
                    height: 50,
                    child: ListTile(
                      leading: Text('Recomended Job',
                          style: style2.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1)),
                      trailing: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Text('See All',
                              style: style2.copyWith(
                                  fontSize: 10,
                                  color: Color(0xffc9c8c8),
                                  letterSpacing: 1))),
                      onTap: () {},
                    )),
                SizedBox(
                  height: 180,
                  child: RecommendedScreen(),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 45,
                    child: ListTile(
                      leading: Container(
                          child: Text('Feed your Dreams',
                              style: style2.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1))),
                      trailing: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Text('See All',
                              style: style2.copyWith(
                                  fontSize: 10,
                                  color: Color(0xffc9c8c8),
                                  letterSpacing: 1))),
                      onTap: () {},
                    )),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: <Widget>[
                      Text(
                          'Success story from people around you, encourage, giving nutritions to your dreams.',
                          style: style.copyWith(fontSize: 13)),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 16, right: 16),
                  padding: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          child: Image.asset('assets/blog.png',
                              fit: BoxFit.cover)),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("How to success and winning competition",
                              style: style.copyWith(
                                color: Color(0xff3b3b3b),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.5,
                              ))),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                              'Success story from people around you, encourage, giving nutritions to your dreams. Lorem ipsum dollor',
                              style: style.copyWith(
                                  color: Color(0xff3b3b3b), fontSize: 12))),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 45,
                    child: ListTile(
                      leading: Container(
                          child: Text('People around you',
                              style: style2.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1))),
                      trailing: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          child: Text('See All',
                              style: style2.copyWith(
                                  fontSize: 10,
                                  color: Color(0xffc9c8c8),
                                  letterSpacing: 1))),
                      onTap: () {},
                    )),
                Material(
                  child: Container(
                    height: 120,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Stack(
                                    alignment: Alignment(0.6, -1),
                                    children: [
                                      MaterialButton(
                                          shape: CircleBorder(),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                new MaterialPageRoute(
                                                    builder: (context) =>
                                                        SeekerProfileView()));
                                          },
                                          child: CircleAvatar(
                                              backgroundColor:
                                                  Color(0xff48576a),
                                              radius: 30.0,
                                              child: Image.asset(
                                                  'assets/img_profil.png',
                                                  scale: 1.3))),
                                      CircleAvatar(
                                        backgroundColor: Color(0xff22c0e8),
                                        radius: 10,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Uray Bawadi',
                                    style: style.copyWith(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Stack(
                                    alignment: Alignment(0.6, -1),
                                    children: [
                                      MaterialButton(
                                          shape: CircleBorder(),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                new MaterialPageRoute(
                                                    builder: (context) =>
                                                        new SeekerProfileView()));
                                          },
                                          child: CircleAvatar(
                                              backgroundColor:
                                                  Color(0xff48576a),
                                              radius: 30.0,
                                              child: Image.asset(
                                                  'assets/img_profil_2.png',
                                                  scale: 1.3))),
                                      CircleAvatar(
                                        backgroundColor: Color(0xff22c0e8),
                                        radius: 10,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Yudi Salim',
                                    style: style.copyWith(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Stack(
                                    alignment: Alignment(0.6, -1),
                                    children: [
                                      MaterialButton(
                                          shape: CircleBorder(),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                new MaterialPageRoute(
                                                    builder: (context) =>
                                                        new SeekerProfileView()));
                                          },
                                          child: CircleAvatar(
                                              backgroundColor:
                                                  Color(0xff48576a),
                                              radius: 30.0,
                                              child: Image.asset(
                                                  'assets/img_profil_3.png',
                                                  scale: 1.3))),
                                      CircleAvatar(
                                        backgroundColor: Color(0xff22c0e8),
                                        radius: 10,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Aprianto',
                                    style: style.copyWith(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Stack(
                                    alignment: Alignment(0.6, -1),
                                    children: [
                                      MaterialButton(
                                          shape: CircleBorder(),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                new MaterialPageRoute(
                                                    builder: (context) =>
                                                        new SeekerProfileView()));
                                          },
                                          child: CircleAvatar(
                                              backgroundColor:
                                                  Color(0xff48576a),
                                              radius: 30.0,
                                              child: Image.asset(
                                                  'assets/img_profil_4.png',
                                                  scale: 1.3))),
                                      CircleAvatar(
                                        backgroundColor: Color(0xff22c0e8),
                                        radius: 10,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Gamabunta',
                                    style: style.copyWith(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Stack(
                                    alignment: Alignment(0.6, -1),
                                    children: [
                                      MaterialButton(
                                          shape: CircleBorder(),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                new MaterialPageRoute(
                                                    builder: (context) =>
                                                        new SeekerProfileView()));
                                          },
                                          child: CircleAvatar(
                                              backgroundColor:
                                                  Color(0xff48576a),
                                              radius: 30.0,
                                              child: Image.asset(
                                                  'assets/img_profil.png',
                                                  scale: 1.3))),
                                      CircleAvatar(
                                        backgroundColor: Color(0xff22c0e8),
                                        radius: 10,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Uray Bawadi',
                                    style: style.copyWith(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Stack(
                                    alignment: Alignment(0.6, -1),
                                    children: [
                                      MaterialButton(
                                          shape: CircleBorder(),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                new MaterialPageRoute(
                                                    builder: (context) =>
                                                        new SeekerProfileView()));
                                          },
                                          child: CircleAvatar(
                                              backgroundColor:
                                                  Color(0xff48576a),
                                              radius: 30.0,
                                              child: Image.asset(
                                                  'assets/img_profil_2.png',
                                                  scale: 1.3))),
                                      CircleAvatar(
                                        backgroundColor: Color(0xff22c0e8),
                                        radius: 10,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Yudi Salim',
                                    style: style.copyWith(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Stack(
                                    alignment: Alignment(0.6, -1),
                                    children: [
                                      MaterialButton(
                                          shape: CircleBorder(),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                new MaterialPageRoute(
                                                    builder: (context) =>
                                                        new SeekerProfileView()));
                                          },
                                          child: CircleAvatar(
                                              backgroundColor:
                                                  Color(0xff48576a),
                                              radius: 30.0,
                                              child: Image.asset(
                                                  'assets/img_profil_3.png',
                                                  scale: 1.3))),
                                      CircleAvatar(
                                        backgroundColor: Color(0xff22c0e8),
                                        radius: 10,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Aprianto',
                                    style: style.copyWith(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Stack(
                                    alignment: Alignment(0.6, -1),
                                    children: [
                                      MaterialButton(
                                          shape: CircleBorder(),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                new MaterialPageRoute(
                                                    builder: (context) =>
                                                        new SeekerProfileView()));
                                          },
                                          child: CircleAvatar(
                                              backgroundColor:
                                                  Color(0xff48576a),
                                              radius: 30.0,
                                              child: Image.asset(
                                                  'assets/img_profil_4.png',
                                                  scale: 1.3))),
                                      CircleAvatar(
                                        backgroundColor: Color(0xff22c0e8),
                                        radius: 10,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Gamabunta',
                                    style: style.copyWith(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Stack(
                                    alignment: Alignment(0.6, -1),
                                    children: [
                                      MaterialButton(
                                          shape: CircleBorder(),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                new MaterialPageRoute(
                                                    builder: (context) =>
                                                        new SeekerProfileView()));
                                          },
                                          child: CircleAvatar(
                                              backgroundColor:
                                                  Color(0xff48576a),
                                              radius: 30.0,
                                              child: Image.asset(
                                                  'assets/img_profil.png',
                                                  scale: 1.3))),
                                      CircleAvatar(
                                        backgroundColor: Color(0xff22c0e8),
                                        radius: 10,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Uray Bawadi',
                                    style: style.copyWith(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Stack(
                                    alignment: Alignment(0.6, -1),
                                    children: [
                                      MaterialButton(
                                          shape: CircleBorder(),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                new MaterialPageRoute(
                                                    builder: (context) =>
                                                        new SeekerProfileView()));
                                          },
                                          child: CircleAvatar(
                                              backgroundColor:
                                                  Color(0xff48576a),
                                              radius: 30.0,
                                              child: Image.asset(
                                                  'assets/img_profil_2.png',
                                                  scale: 1.3))),
                                      CircleAvatar(
                                        backgroundColor: Color(0xff22c0e8),
                                        radius: 10,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Yudi Salim',
                                    style: style.copyWith(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Stack(
                                    alignment: Alignment(0.6, -1),
                                    children: [
                                      MaterialButton(
                                          shape: CircleBorder(),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                new MaterialPageRoute(
                                                    builder: (context) =>
                                                        new SeekerProfileView()));
                                          },
                                          child: CircleAvatar(
                                              backgroundColor:
                                                  Color(0xff48576a),
                                              radius: 30.0,
                                              child: Image.asset(
                                                  'assets/img_profil_3.png',
                                                  scale: 1.3))),
                                      CircleAvatar(
                                        backgroundColor: Color(0xff22c0e8),
                                        radius: 10,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Aprianto',
                                    style: style.copyWith(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Stack(
                                    alignment: Alignment(0.6, -1),
                                    children: [
                                      MaterialButton(
                                          shape: CircleBorder(),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                new MaterialPageRoute(
                                                    builder: (context) =>
                                                        new SeekerProfileView()));
                                          },
                                          child: CircleAvatar(
                                              backgroundColor:
                                                  Color(0xff48576a),
                                              radius: 30.0,
                                              child: Image.asset(
                                                  'assets/img_profil_4.png',
                                                  scale: 1.3))),
                                      CircleAvatar(
                                        backgroundColor: Color(0xff22c0e8),
                                        radius: 10,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Gamabunta',
                                    style: style.copyWith(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
                SizedBox(height: 30)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
