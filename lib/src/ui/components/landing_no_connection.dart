import 'package:flutter/material.dart';

class LandingNoConnection extends StatefulWidget {
  @override
  _LandingNoConnectionState createState() => _LandingNoConnectionState();
}

class _LandingNoConnectionState extends State<LandingNoConnection>
    with SingleTickerProviderStateMixin {
  TextStyle style = TextStyle(fontFamily: 'Cocogoose', fontSize: 20.0);
  TextStyle style1 = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(70, 60, 70, 0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/vector-3.png'),
              alignment: AlignmentDirectional.topEnd,
              fit: BoxFit.fitHeight),
        ),
        child: Column(
          children: <Widget>[
            Image.asset('assets/vector-4.png'),
            Container(
              height: 170,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Text('Oops !!',
                      style: style.copyWith(fontSize: 30, color: Colors.white)),
                  Text('It’s look like you are in the moon !!',
                      textAlign: TextAlign.center,
                      style:
                          style1.copyWith(fontSize: 16, color: Colors.white)),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      'No Internet connection. Make sure that Wifi or cellular mobile data is turned on, then try again',
                      textAlign: TextAlign.center,
                      style: style1.copyWith(fontSize: 16, color: Colors.white))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
