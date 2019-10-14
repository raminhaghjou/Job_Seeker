// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:space/employer_app.dart';
// import 'package:space/seeker_app.dart';
// import 'package:space/src/ui/auth/employer/login_signup_employer.dart';
// import 'package:space/src/ui/auth/seeker/login_signup_seeker.dart';

// class DreamApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//       statusBarColor: Colors.transparent,
//       statusBarBrightness: Brightness.light,
//       statusBarIconBrightness: Brightness.light,
//       systemNavigationBarIconBrightness: Brightness.light,
//       systemNavigationBarColor: Colors.black,   
//     ));
//     return Material(
//       child: Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           fit: BoxFit.cover,
//           image: AssetImage('assets/vector-5.png', ),
//         ),
//       ),
//     child: Stack(children: <Widget>[
//         Padding(
//           padding: EdgeInsets.only(top: 50, right: 30),
//           child: Stack(
//           alignment: Alignment.topRight,
//           children: <Widget>[
//           Align(
//             alignment: Alignment.topRight,
//            child: Image.asset('assets/vector-11.png', scale: 1.4,)),
//           Align(
//             alignment: Alignment(0.6, -0.8),
//             child: Image.asset('assets/vector-12.png', scale: 1.5,)),
//           Align(
//             alignment: Alignment(0.7, -0.5),
//             child: Image.asset('assets/vector-13.png', scale: 1.5,)),
//           Align(
//             alignment: Alignment(0.2, -0.4),
//             child: Image.asset('assets/vector-14.png', scale: 1.5,)),
//             ],
//           ),
//         ),
//         Stack(
//           children:[
//           Align(
//             alignment: Alignment(-0.8, 0.2),
//             child: Image.asset('assets/vector-16.png', scale: 1.5,)),
//             Align(
//             alignment: Alignment(-0.4, -0),
//             child: Image.asset('assets/vector-15.png', scale: 1.5,)),
//           ],
//         ),
//         Padding(
//           padding: EdgeInsets.only(bottom: 20),
//           child: Align(
//           alignment: Alignment.bottomCenter,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: <Widget>[
//             MaterialButton(
//             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//             color: Color(0xff22c0e8),
//               minWidth: 220,
//               onPressed: () {
//                 Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => LoginSignUpSeeker()),
//                       );
//               },
//               child: 
//                 Text("Look for Jobs",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                         color: Colors.white, fontSize: 13)),
//             ),
//             MaterialButton(
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//               color: Color(0xff57b22f),
//                 minWidth: 220,
//                 onPressed: () {
//                   Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => LoginSignUpEmployer())
//                         );
//                 },
//                 child: 
//                   Text("Look for Employees",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                           color: Colors.white, fontSize: 13)),
//               ),
//               SizedBox(height: 20),
//               Column(
//                 children: <Widget>[
//                 Text("Copyright © 2019 by Dreamjob",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                         color: Colors.white, fontSize: 10)
//                 ),
//                 Text("www.dreamjob.co.id",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       color: Colors.cyan[400], fontSize: 10)),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         ),
//        ],
//       ),
//      ),
//     );
//   }
// }
    