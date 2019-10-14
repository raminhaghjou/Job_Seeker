import 'package:flutter/material.dart';
import 'package:space/navigator_seeker.dart';

class UiGetStartedSeeker extends StatelessWidget {

  @override
  Widget build(BuildContext context) { 
  TextStyle style = TextStyle(fontFamily: 'Quicksand-Regular', fontSize: 20.0);
    return Scaffold(
    body: Padding(
      padding: EdgeInsets.fromLTRB(40, 50, 40, 50),
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 60),
          child: Image.asset('assets/logo_vertical.png')
          ),
          Text('Are you ready to chase your dreams?',
           textAlign: TextAlign.center,
           style: style.copyWith(fontSize: 40, color: Color(0xff3b3b3b), fontWeight: FontWeight.bold)),
          Text('Make your dreams come true by start working. Find jobs which suit you. Easy to apply, no paper, no writing. Just type and upload.',
           textAlign: TextAlign.center,
          style: style.copyWith(fontSize: 17.2, color: Color(0x99383839), fontWeight: FontWeight.w600)),
          ButtonTheme(
          minWidth: 190,
          height: 55,
          child: RaisedButton(
            color: Color(0xff57b22f),
            onPressed: () {  Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => SeekerNavigator())); 
            },
            child: Text('Get Started', style: style.copyWith(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          ),
          ButtonTheme(
          minWidth: 190,
          height: 55,
          child: OutlineButton(
            highlightedBorderColor: Color(0xff57b22f),
            borderSide: BorderSide(color: Color(0xff57b22f)),
            onPressed: () {  Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => SeekerNavigator())); 
            },
            child: Text('Try Trial', style: style.copyWith(fontSize: 24, color: Color(0xff57b22f), fontWeight: FontWeight.bold)),
          ),
          ),
          ],
        ),
      ),
    ),
    );
  }
} 