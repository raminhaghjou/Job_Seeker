import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:space/src/ui/components/category_post_screen.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CategoryPostScreen()));
            },
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 100,
                  child: SvgPicture.asset(
                    'assets/f&b.svg',
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Food & Beverages',
                        style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1)),
                    Text('8570 Jobs Available',
                        style: TextStyle(
                            fontFamily: 'VarelaRound',
                            fontSize: 12,
                            color: Colors.white,
                            letterSpacing: 1)),
                  ],
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
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 100,
                  child: SvgPicture.asset(
                    'assets/Startup.svg',
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Startup',
                        style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1)),
                    Text('721 Jobs Available',
                        style: TextStyle(
                            fontFamily: 'VarelaRound',
                            fontSize: 12,
                            color: Colors.white,
                            letterSpacing: 1)),
                  ],
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
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 100,
                  child: SvgPicture.asset(
                    'assets/Corporate.svg',
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Corporate',
                        style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1)),
                    Text('2130 Jobs Available',
                        style: TextStyle(
                            fontFamily: 'VarelaRound',
                            fontSize: 12,
                            color: Colors.white,
                            letterSpacing: 1)),
                  ],
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
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 100,
                  child: SvgPicture.asset(
                    'assets/market-2.svg',
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Retails',
                        style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1)),
                    Text('6483 Jobs Available',
                        style: TextStyle(
                            fontFamily: 'VarelaRound',
                            fontSize: 12,
                            color: Colors.white,
                            letterSpacing: 1)),
                  ],
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
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 100,
                  child: SvgPicture.asset(
                    'assets/Goverment.svg',
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Goverment',
                        style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1)),
                    Text('823 Jobs Available',
                        style: TextStyle(
                            fontFamily: 'VarelaRound',
                            fontSize: 12,
                            color: Colors.white,
                            letterSpacing: 1)),
                  ],
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
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 100,
                  child: SvgPicture.asset(
                    'assets/IT.svg',
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('IT',
                        style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1)),
                    Text('2123 Jobs Available',
                        style: TextStyle(
                            fontFamily: 'VarelaRound',
                            fontSize: 12,
                            color: Colors.white,
                            letterSpacing: 1)),
                  ],
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
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 100,
                  child: SvgPicture.asset(
                    'assets/market.svg',
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Market',
                        style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1)),
                    Text('3523 Jobs Available',
                        style: TextStyle(
                            fontFamily: 'VarelaRound',
                            fontSize: 12,
                            color: Colors.white,
                            letterSpacing: 1)),
                  ],
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
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 100,
                  child: SvgPicture.asset(
                    'assets/Fashion.svg',
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Fashion',
                        style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1)),
                    Text('1373 Jobs Available',
                        style: TextStyle(
                            fontFamily: 'VarelaRound',
                            fontSize: 12,
                            color: Colors.white,
                            letterSpacing: 1)),
                  ],
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
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 100,
                  child: SvgPicture.asset(
                    'assets/Transport.svg',
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Transport',
                        style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1)),
                    Text('223 Jobs Available',
                        style: TextStyle(
                            fontFamily: 'VarelaRound',
                            fontSize: 12,
                            color: Colors.white,
                            letterSpacing: 1)),
                  ],
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
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 100,
                  child: SvgPicture.asset(
                    'assets/DKV.svg',
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Design',
                        style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1)),
                    Text('3821 Jobs Available',
                        style: TextStyle(
                            fontFamily: 'VarelaRound',
                            fontSize: 12,
                            color: Colors.white,
                            letterSpacing: 1)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
