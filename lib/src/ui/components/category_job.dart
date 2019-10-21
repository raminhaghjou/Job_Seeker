import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:space/src/ui/components/category_list_screen.dart';
import 'package:space/src/ui/components/category_post_screen.dart';
import 'package:space/src/ui/seeker/screens/jobs_list_screen.dart';

class CategoryJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CategoryPostScreen()));
            },
            child: Stack(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 140,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(10),
                    child: SvgPicture.asset(
                      'assets/f&b.svg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 140,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Food & Beverages',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1)),
                        Text('5917 Jobs Available',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                letterSpacing: 1)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CategoryPostScreen()));
            },
            child: Stack(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 140,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(10),
                    child: SvgPicture.asset(
                      'assets/Fashion.svg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 140,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Fashion',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1)),
                        Text('2130 Jobs Available',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                letterSpacing: 1)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CategoryPostScreen()));
            },
            child: Stack(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 140,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(10),
                    child: SvgPicture.asset(
                      'assets/market-2.svg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 140,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Retail',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1)),
                        Text('2130 Jobs Available',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                letterSpacing: 1)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CategoryPostScreen()));
            },
            child: Stack(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 140,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(10),
                    child: SvgPicture.asset(
                      'assets/Corporate.svg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 140,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Corporate',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1)),
                        Text('2130 Jobs Available',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                letterSpacing: 1)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CategoryListScreen()));
            },
            child: Stack(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 140,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(10),
                    child: SvgPicture.asset(
                      'assets/others.svg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 140,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('More',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1)),
                       Icon(MdiIcons.dotsHorizontal, color: Colors.white,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
