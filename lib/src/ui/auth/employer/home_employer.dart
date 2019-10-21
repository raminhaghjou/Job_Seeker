import 'package:carousel_slider/carousel_slider.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:space/src/ui/components/category_job_screen.dart';

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

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 94,
          width: MediaQuery.of(context).size.width,
          child: SvgPicture.asset(
            'assets/vector-5.svg',
            fit: BoxFit.fitWidth,
          ),
        ),
        Scaffold(
          drawer: EmployerDrawer(),
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70), // here the desired height
            child: AppBar(
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              leading: Builder(
                builder: (context) => IconButton(
                  icon: Icon(Icons.menu, color: Colors.white),
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
                    hintStyle:
                        style.copyWith(color: Color(0xffc9c8c8), fontSize: 16),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffc5cfda)),
                    )),
              ),
            ),
          ),
          body: ListView(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 110,
                      child: Carousel(
                        autoplay: true,
                        animationCurve: Curves.fastOutSlowIn,
                        animationDuration: Duration(milliseconds: 2000),
                        dotSize: 4.0,
                        dotSpacing: 15,
                        dotIncreasedColor: Colors.amber,
                        dotBgColor: Colors.transparent,
                        dotPosition: DotPosition.bottomLeft,
                        dotVerticalPadding: 5.0,
                        showIndicator: true,
                        dotHorizontalPadding: 10.0,
                        indicatorBgPadding: 0,
                        images: [
                          Padding(
                            padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(10),
                              child: SvgPicture.asset(
                                'assets/dream-cast.svg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(10),
                              child: SvgPicture.asset(
                                'assets/dream-cast.svg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(10),
                              child: SvgPicture.asset(
                                'assets/dream-cast.svg',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 70, child: CategoryScreen()),
                    Container(
                        height: 45,
                        child: ListTile(
                          leading: Container(
                              child: Text('Recommended Job',
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
                    SizedBox(height: 150, child: RecommendedScreen()),
                    Container(
                        height: 50,
                        child: ListTile(
                          leading: Text('Recent Job',
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
                      child: RecentScreen(),
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
                    Card(
                      margin:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(color: Colors.white),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                child: Image.asset('assets/blog.png',
                                    fit: BoxFit.fitWidth)),
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                    "How to success and winning competition",
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
                                        color: Color(0xff3b3b3b),
                                        fontSize: 12))),
                          ],
                        ),
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
                                                    MaterialPageRoute(
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
        ),
      ],
    );
  }
}
