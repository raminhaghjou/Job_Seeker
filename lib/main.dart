import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:space/navigator_employer.dart';
import 'package:space/navigator_seeker.dart';
import 'package:space/src/app.dart';

import 'package:space/src/ui/auth/employer/home_employer.dart';
import 'package:space/src/ui/auth/employer/ui_get_started_employer.dart';
import 'package:space/src/ui/auth/seeker/home_seeker.dart';
import 'package:space/src/ui/auth/seeker/ui_get_started_seeker.dart';
import 'package:space/src/ui/employer/layout/employer_edit_post.dart';
import 'package:space/src/ui/employer/screens/employer_posted_screen.dart';
import 'package:space/src/ui/employer/screens/employer_tabs.dart';
import 'package:space/src/ui/employer/widgets/flare_interview_employer.dart';
import 'package:space/src/ui/seeker/layout/job_details.dart';
import 'package:space/src/ui/seeker/screens/seeker_tabs.dart';
import 'package:space/src/ui/seeker/widgets/flare_interview_seeker.dart';

import 'package:space/src/ui/theme/theme.dart';

void main() => runApp(DreamJobApp());

class DreamJobApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = buildTheme();
    return MultiProvider(
      providers: [
        // ChangeNotifierProvider.value(
        //   value: Auth(),
        // ),
        // ChangeNotifierProvider.value(
        //   value: Jobs(),
        // ),
        // ChangeNotifierProvider.value(
        //   value: Save(),
        // ),
        // ChangeNotifierProxyProvider<Auth, Applys>(
        //   builder: (ctx, auth, previousApplys) => Applys(
        //     auth.token,
        //     auth.userId,
        //     previousApplys == null ? [] : previousApplys.applys,
        //   ),
        // ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: DreamApp(),
          routes: {
            HomePageEmployer.routeName: (ctx) => HomePageEmployer(),
            EmployerTabs.routeName: (ctx) => EmployerTabs(),
            EmployerPostScreen.routeName: (ctx) => EmployerPostScreen(),
            EditPost.routeName: (ctx) => EditPost(),
            EmployerNavigator.routeName: (ctx) => EmployerNavigator(),
            UiGetStartedEmployer.routeName: (ctx) => UiGetStartedEmployer(),
            InterviewEmployer.routeName: (ctx) => InterviewEmployer(),

            HomePageSeeker.routeName: (ctx) => HomePageSeeker(),
            JobDetails.routeName: (ctx) => JobDetails(),
            // SaveScreen.routeName: (ctx) => SaveScreen(),
            SeekerTabs.routeName: (ctx) => SeekerTabs(),
            // // ApplysScreen.routeName: (ctx) => ApplysScreen(),
            SeekerNavigator.routeName: (ctx) => SeekerNavigator(),
            UiGetStartedSeeker.routeName: (ctx) => UiGetStartedSeeker(),
            InterviewSeeker.routeName: (ctx) => InterviewSeeker(),
          },
        ),
    );
  }
}
