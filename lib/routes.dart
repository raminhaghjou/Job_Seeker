// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:provider/provider.dart';

// import 'package:space/root.dart';
// import 'package:space/src/core/models/jobs.dart';
// import 'package:space/src/core/models/save.dart';
// import 'package:space/src/ui/screens/job_details.dart';
// import 'package:space/src/ui/screens/save_screen.dart';
// import 'package:space/src/ui/screens/seeker_tabs.dart';
// import 'package:space/src/ui/theme/theme.dart';

// class Routes extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     final theme = buildTheme();
//     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//       statusBarColor: Colors.black,
//       statusBarBrightness: Brightness.dark,
//       statusBarIconBrightness: Brightness.dark,
//       systemNavigationBarIconBrightness: Brightness.dark,
//       systemNavigationBarColor: Colors.transparent,   
//     ));
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider.value( 
//           value: Jobs(),
//         ),
//         ChangeNotifierProvider.value(
//           value: Save(),
//         )
//       ],
//       child: MaterialApp(
//           debugShowCheckedModeBanner: false,
//           theme: theme,
//           home: SeekerTabs(),     
//           routes: {
//             JobDetails.routeName: (ctx) => JobDetails(),
//             SaveScreen.routeName: (ctx) => SaveScreen(),
//           },
//       )
//     );
//   }
// }