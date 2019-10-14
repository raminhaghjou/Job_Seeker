// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:space/app.dart';
// import 'package:space/main.dart';
// import 'package:space/navigator_employer.dart';
// import 'package:space/src/core/models/auth.dart';

// import 'package:space/src/core/models/jobs.dart';
// import 'package:space/src/core/models/save.dart';
// import 'package:space/src/ui/auth/employer/home_employer.dart';
// import 'package:space/src/ui/employer/employer_edit_post.dart';
// import 'package:space/src/ui/employer/employer_tabs.dart';
// import 'package:space/src/ui/employer/employer_post_a_job.dart';
// import 'package:space/src/ui/screens/splash_screen.dart';

// import 'package:space/src/ui/theme/theme.dart';

// void main() => runApp(EmployerApp());

// class EmployerApp extends StatelessWidget {
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
//           ? EmployerNavigator()
//           : FutureBuilder(
//             future: auth.tryAutoLogin(),
//             builder: (ctx, authResultSnapshot) =>
//               authResultSnapshot.connectionState ==
//                     ConnectionState.waiting
//                   ? SplashScreen()
//                   : DreamApp(),
//           ),
//           routes: {
//             HomePageEmployer.routeName: (ctx) => HomePageEmployer(),
//             EmployerTabs.routeName: (ctx) => EmployerTabs(),
//             PostaJob.routeName: (ctx) => PostaJob(),
//             EditPost.routeName: (ctx) => EditPost(),  
//           },
//         ),
//       ),
//     );
//   }
// }
