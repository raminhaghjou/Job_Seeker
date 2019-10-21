import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:space/src/ui/auth/employer/ui_get_started_employer.dart';
import 'package:space/src/ui/auth/seeker/ui_get_started_seeker.dart';


class IntroSeeker extends StatelessWidget {
  final pages = [
    PageViewModel(
        pageColor: const Color(0xffff6d00),
        iconImageAssetPath: 'assets/seeker-1.png',
        bubble: Image.asset('assets/seeker-1.png'),
        body: Text(
          'More than 100+ Job may suite you.',
        ),
        title: Text(
          'Get job and Start your dreams!', textAlign: TextAlign.center,
        ),
        titleTextStyle: TextStyle(fontFamily: 'VarelaRound', color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontFamily: 'VarelaRound', color: Colors.white, fontSize: 21),
        mainImage: Image.asset(
          'assets/seeker-1.png',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
        pageColor: const Color(0xffd50000),
        iconImageAssetPath: 'assets/seeker-2.png',
        bubble: Image.asset('assets/seeker-2.png'),
        body: Text(
          'Say goodbay to paper, More Effectives and Efficients.',
        ),
        title: Text(
          'New and Easier way!', textAlign: TextAlign.center,
        ),
        titleTextStyle: TextStyle(fontFamily: 'VarelaRound', color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontFamily: 'VarelaRound', color: Colors.white, fontSize: 21),
        mainImage: Image.asset(
          'assets/seeker-2.png',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
      pageColor: const Color(0xff64dd17),
      bubble: Image.asset('assets/seeker-3.png'),
      iconImageAssetPath: 'assets/seeker-3.png',
      body: Text('Check your applied status. No need to wait for another chances.',
           textAlign: TextAlign.center),
      title:  Text('No worry!',
           textAlign: TextAlign.center),
      mainImage: Image.asset(
        'assets/seeker-3.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: TextStyle(fontFamily: 'VarelaRound', color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
      bodyTextStyle: TextStyle(fontFamily: 'VarelaRound', color: Colors.white, fontSize: 21),
    ),
    PageViewModel(
      pageColor: const Color(0xff64dd17),
      bubble: Image.asset('assets/employer-3.png'),
      iconImageAssetPath: 'assets/employer-3.png',
      body: Text('Contact your employer directly with chat and live interview Features.',
           textAlign: TextAlign.center),
      title:  Text('Get in touch directly!',
           textAlign: TextAlign.center),
      mainImage: Image.asset(
        'assets/employer-3.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: TextStyle(fontFamily: 'VarelaRound', color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
      bodyTextStyle: TextStyle(fontFamily: 'VarelaRound', color: Colors.white, fontSize: 21),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          showNextButton: true,
          showBackButton: true,
          showSkipButton: true,
          doneText: Text('DONE'),
          onTapDoneButton: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UiGetStartedSeeker(),
              ), //MaterialPageRoute
            );
          },
          pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
          pageButtonTextSize: 5,
        ), //IntroViewsFlutter
      ), //Builder
    ); //Material App
  }
}
