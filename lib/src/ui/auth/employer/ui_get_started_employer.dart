import 'package:flutter/material.dart';
import 'package:space/navigator_employer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UiGetStartedEmployer extends StatelessWidget {
  static const routeName = '/ui-employer';
  @override
  Widget build(BuildContext context) {
    TextStyle style =
        TextStyle(fontFamily: 'Quicksand-Regular', fontSize: 20.0, color: Colors.white);
    return Stack(
      children: <Widget>[
        SvgPicture.asset(
          'assets/vector-5.svg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
               Container(
                child: Image.asset('assets/logo.png', height: 120,)),
              Text('Are you ready to find your dream team?',
                  textAlign: TextAlign.center,
                  style: style.copyWith(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              Text(
                  'Find your best team now is easiers. Easy to post a job, get in touch via chat, interviewing anywhere via live. Just type and upload.',
                  textAlign: TextAlign.center,
                  style: style.copyWith(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600)),
              SizedBox(height: 50),
              ButtonTheme(
                minWidth: 190,
                height: 55,
                child: RaisedButton(
                  color: Color(0xff57b22f),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                EmployerNavigator()));
                  },
                  child: Text('Get Started',
                      style: style.copyWith(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: 20),
              ButtonTheme(
                minWidth: 190,
                height: 55,
                child: OutlineButton(
                  highlightedBorderColor: Colors.white,
                  borderSide: BorderSide(color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                EmployerNavigator()));
                  },
                  child: Text('Try Trial',
                      style: style.copyWith(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
      ],
    );
  }
}
