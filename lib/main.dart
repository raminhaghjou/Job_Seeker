import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:space/navigator_seeker.dart';
import 'package:space/src/core/models/apply.dart';
import 'package:space/src/core/models/auth.dart';
import 'package:space/src/core/models/cart.dart';

import 'package:space/src/core/models/jobs.dart';
import 'package:space/src/ui/auth/employer/home_employer.dart';
import 'package:space/src/ui/auth/employer/login_signup_employer.dart';
import 'package:space/src/ui/auth/seeker/home_seeker.dart';
import 'package:space/src/ui/employer/layout/employer_edit_post.dart';
import 'package:space/src/ui/employer/screens/employer_posted_screen.dart';
import 'package:space/src/ui/employer/screens/employer_tabs.dart';
import 'package:space/src/ui/seeker/layout/job_details.dart';
import 'package:space/src/ui/seeker/screens/applys_screen.dart';
import 'package:space/src/ui/seeker/screens/cart_screen.dart';
import 'package:space/src/ui/seeker/screens/seeker_tabs.dart';
import 'package:space/src/ui/components/splash_screen.dart';

import 'package:space/src/ui/theme/theme.dart';

void main() => runApp(DreamJobApp());

class DreamJobApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = buildTheme();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
        ChangeNotifierProxyProvider<Auth, Jobs>(
          builder: (ctx, auth, previousJobs) => Jobs(
            auth.token,
            auth.userId,
            previousJobs == null ? [] : previousJobs.posts,
          ),
        ),
        // ChangeNotifierProvider.value(
        //   value: Save(),
        // )
        ChangeNotifierProxyProvider<Auth, Applys>(
          builder: (ctx, auth, previousApplys) => Applys(
            auth.token,
            auth.userId,
            previousApplys == null ? [] : previousApplys.applys,
          ),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
      ],
      child: Consumer<Auth>(
        builder: (ctx, auth, _) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: auth.isAuth
              ? SeekerNavigator()
              : FutureBuilder(
                  future: auth.tryAutoLogin(),
                  builder: (ctx, authResultSnapshot) =>
                      authResultSnapshot.connectionState ==
                              ConnectionState.waiting
                          ? SplashScreen()
                          : LoginSignUpEmployer(),
                ),
          routes: {
            HomePageEmployer.routeName: (ctx) => HomePageEmployer(),
            EmployerTabs.routeName: (ctx) => EmployerTabs(),
            EmployerPostScreen.routeName: (ctx) => EmployerPostScreen(),
            EditPost.routeName: (ctx) => EditPost(),

            HomePageSeeker.routeName: (ctx) => HomePageSeeker(),
            JobDetails.routeName: (ctx) => JobDetails(),
            // SaveScreen.routeName: (ctx) => SaveScreen(),
            SeekerTabs.routeName: (ctx) => SeekerTabs(),
            CartScreen.routeName: (ctx) => CartScreen(),
            ApplysScreen.routeName: (ctx) => ApplysScreen(),
          },
        ),
      ),
    );
  }
}
