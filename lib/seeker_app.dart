// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:space/main.dart';
// import 'package:space/navigator_seeker.dart';
// import 'package:space/src/core/models/auth.dart';

// import 'package:space/src/core/models/jobs.dart';
// import 'package:space/src/core/models/save.dart';
// import 'package:space/src/ui/auth/seeker/home_seeker.dart';
// import 'package:space/src/ui/screens/job_details.dart';
// import 'package:space/src/ui/screens/save_screen.dart';
// import 'package:space/src/ui/screens/seeker_tabs.dart';
// import 'package:space/src/ui/screens/splash_screen.dart';

// import 'package:space/src/ui/theme/theme.dart';

// class SeekerApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final theme = buildTheme();
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider.value(
//           value: Auth(),
//         ),
//         ChangeNotifierProxyProvider<Auth, Jobs>( 
//           builder: (ctx, auth, previousJobs) =>Jobs(
//             auth.token,
//             auth.userId,
//             previousJobs == null ? [] : previousJobs.posts,
//           ),
//         ),
//         ChangeNotifierProvider.value(
//           value: Save(),
//         )
//       ],
//       child: Consumer<Auth>(
//         builder: (ctx, auth, _) => MaterialApp(
//           debugShowCheckedModeBanner: false,
//           theme: theme,
//           home: auth.isAuth
//           ? SeekerNavigator()
//           : FutureBuilder(
//             future: auth.tryAutoLogin(),
//             builder: (ctx, authResultSnapshot) =>
//               authResultSnapshot.connectionState ==
//                     ConnectionState.waiting
//                   ? SplashScreen()
//                   : DreamApp(),
//           ),
//           routes: {
//             HomePageSeeker.routeName: (ctx) => HomePageSeeker(),
//             JobDetails.routeName: (ctx) => JobDetails(),
//             SaveScreen.routeName: (ctx) => SaveScreen(),           
//             SeekerTabs.routeName: (ctx) => SeekerTabs(),       
//           },
//         ),
//       ),
//     );
//   }
// }
