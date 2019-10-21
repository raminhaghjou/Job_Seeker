import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:space/src/ui/auth/employer/ui_get_started_employer.dart';


class IntroImployer extends StatelessWidget {
  final pages = [
    PageViewModel(
        pageColor: const Color(0xffff6d00),
        iconImageAssetPath: 'assets/employer-2.png',
        
        bubble: Image.asset('assets/employer-2.png'),
        body: Text(
          'Check profile information easier.',
        ),
        title: Text(
          'Choose Applicants with simple click!', textAlign: TextAlign.center,
        ),
        titleTextStyle: TextStyle(fontFamily: 'VarelaRound', color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontFamily: 'VarelaRound', color: Colors.white, fontSize: 21),
        mainImage: Image.asset(
          'assets/employer-2.png',
          height: 450.0,
          width: 450.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
        pageColor: const Color(0xffd50000),
        iconImageAssetPath: 'assets/employer-1.png',
        bubble: Image.asset('assets/employer-1.png'),
        body: Text(
          'Faster and Effectives to hired.',
        ),
        title: Text(
          'New and Easier Way!', textAlign: TextAlign.center,
        ),
        titleTextStyle: TextStyle(fontFamily: 'VarelaRound', color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontFamily: 'VarelaRound', color: Colors.white, fontSize: 21),
        mainImage: Image.asset(
          'assets/employer-1.png',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        )), 
    PageViewModel(
      pageColor: const Color(0xff64dd17),
      bubble: Image.asset('assets/employer-3.png'),
      iconImageAssetPath: 'assets/employer-3.png',
      body: Text('Contact your candidate directly with chat and live interview features.',
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
                builder: (context) => UiGetStartedEmployer(),
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
