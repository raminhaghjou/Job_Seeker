import 'package:flutter/material.dart';
import 'package:space/navigator_employer.dart';

class UiGetStartedEmployer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  TextStyle style = TextStyle(fontFamily: 'Quicksand-Regular', fontSize: 20.0);
    return new Scaffold(
    body: Padding(
      padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 70),
          child: Image.asset('assets/logo_vertical.png')
          ),
          Text('Are you ready to find your dream team?',
           textAlign: TextAlign.center,
           style: style.copyWith(fontSize: 40, color: Color(0xff3b3b3b), fontWeight: FontWeight.bold)),
          Text('Find your best team now is easiers. Easy to post a job, get in touch via chat, interviewing anywhere via live. Just type and upload.',
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
                  builder: (BuildContext context) => EmployerNavigator())); 
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
                  builder: (BuildContext context) => EmployerNavigator())); 
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