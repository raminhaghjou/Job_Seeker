import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

import 'package:space/src/ui/seeker/layout/job_details.dart';

class SavePosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final job = Provider.of<Job>(context, listen: false);
    // final authData = Provider.of<Auth>(context, listen: false);
    // final cart = Provider.of<Cart>(context, listen: false);
    // final save = Provider.of<Save>(context, listen: false);
    return Column(
      children: <Widget>[
        // Dismissible(
        //   direction: DismissDirection.endToStart,
        //   confirmDismiss: (direction) {
        //     return showDialog(
        //         context: context,
        //         builder: (ctx) => AlertDialog(
        //               title: Text('Are you sure?'),
        //               content: Text('Do you want to remove the job from the list?'),
        //               actions: <Widget>[
        //                 FlatButton(
        //                   child: Text('No'),
        //                   onPressed: () {
        //                     Navigator.of(ctx).pop(false);
        //                   },
        //                 ),
        //                 FlatButton(
        //                   child: Text('Yes'),
        //                   onPressed: () {
        //                     Navigator.of(ctx).pop(true);
        //                   },
        //                 ),
        //               ],
        //             ));
        //   },
        //   onDismissed: (direction) {},
        //   // key: ValueKey(job.id),
        //   background: Container(
        //     color: Theme.of(context).errorColor,
        //     child: Icon(
        //       Icons.delete,
        //       color: Colors.white,
        //       size: 30,
        //     ),
        //     alignment: Alignment.centerRight,
        //     padding: EdgeInsetsDirectional.only(end: 20),
        //   ),
        //   child: Container(
        //     padding: EdgeInsets.only(bottom: 10),
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(0),
        //       color: Colors.white,
        //       boxShadow: [
        //         BoxShadow(
        //             color: Color(0xff0c0c0c0),
        //             blurRadius: 1.5,
        //             offset: Offset(1.0, 1.0))
        //       ],
        //     ),
        //     child:
        Stack(
          alignment: Alignment(1.06, -2),
          children: <Widget>[
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/mekuru.png'),
                  ),
                ),
              ),
              title: Container(
                padding: (EdgeInsets.only(top: 5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Mekuru Ramen',
                        style: TextStyle(
                            fontSize: 16, color: Color(0xff3b3b3b), height: 2)),
                    Row(
                      children: <Widget>[
                        Text('Head Chef',
                            style: TextStyle(
                                fontFamily: 'VarelaRound',
                                fontSize: 13,
                                color: Color(0xff3b3b3b))),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Material(
                            elevation: 1.0,
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color(0xff65be3e),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              child: Text('Full Time',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                      height: 1.3)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on,
                            size: 10, color: Color(0xff8997a7)),
                        Flexible(
                            child: Text('Pontianak, West Borneo',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff8997a7),
                                    height: 1.3))),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('Salary: ',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff8997a7),
                                height: 1.3)),
                        Text(
                            FlutterMoneyFormatter(
                                    amount: 5000000,
                                    settings: MoneyFormatterSettings(
                                        symbol: 'Rp',
                                        thousandSeparator: '.',
                                        fractionDigits: 0))
                                .output
                                .symbolOnLeft,
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff3b3b3b),
                                height: 1.3)),
                        Text(' / Month',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff3b3b3b),
                                height: 1.3)),
                      ],
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(JobDetails.routeName);
              },
            ),
            // Padding(
            //   padding: EdgeInsets.only(top: 6),
            //   child: Consumer<Job>(
            //     builder: (ctx, job, _) => IconButton(
            //       icon: Icon(
            //           job.isSave ? MdiIcons.bookmark : MdiIcons.bookmarkOutline,
            //           color: Theme.of(context).colorScheme.onPrimary),
            //       onPressed: () {
            //         job.toggleSavePosts();
            //         Scaffold.of(context).showSnackBar(
            //           SnackBar(
            //             duration: Duration(seconds: 1),
            //             content:
            //                 Text('Save', style: TextStyle(color: Colors.white)),
            //           ),
            //         );
            //       },
            //     ),
            //   ),
            // ),
          ],
        ),
        Divider(height: 10),
        Stack(
          alignment: Alignment(1.06, -2),
          children: <Widget>[
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/mekuru.png'),
                  ),
                ),
              ),
              title: Container(
                padding: (EdgeInsets.only(top: 5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Mekuru Ramen',
                        style: TextStyle(
                            fontSize: 16, color: Color(0xff3b3b3b), height: 2)),
                    Row(
                      children: <Widget>[
                        Text('Head Chef',
                            style: TextStyle(
                                fontFamily: 'VarelaRound',
                                fontSize: 13,
                                color: Color(0xff3b3b3b))),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Material(
                            elevation: 1.0,
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color(0xff65be3e),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              child: Text('Full Time',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                      height: 1.3)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on,
                            size: 10, color: Color(0xff8997a7)),
                        Flexible(
                            child: Text('Pontianak, West Borneo',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff8997a7),
                                    height: 1.3))),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('Salary: ',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff8997a7),
                                height: 1.3)),
                        Text(
                            FlutterMoneyFormatter(
                                    amount: 5000000,
                                    settings: MoneyFormatterSettings(
                                        symbol: 'Rp',
                                        thousandSeparator: '.',
                                        fractionDigits: 0))
                                .output
                                .symbolOnLeft,
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff3b3b3b),
                                height: 1.3)),
                        Text(' / Month',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff3b3b3b),
                                height: 1.3)),
                      ],
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(JobDetails.routeName);
              },
            ),
            // Padding(
            //   padding: EdgeInsets.only(top: 6),
            //   child: Consumer<Job>(
            //     builder: (ctx, job, _) => IconButton(
            //       icon: Icon(
            //           job.isSave ? MdiIcons.bookmark : MdiIcons.bookmarkOutline,
            //           color: Theme.of(context).colorScheme.onPrimary),
            //       onPressed: () {
            //         job.toggleSavePosts();
            //         Scaffold.of(context).showSnackBar(
            //           SnackBar(
            //             duration: Duration(seconds: 1),
            //             content:
            //                 Text('Save', style: TextStyle(color: Colors.white)),
            //           ),
            //         );
            //       },
            //     ),
            //   ),
            // ),
          ],
        ),
        Divider(height: 10),
        Stack(
          alignment: Alignment(1.06, -2),
          children: <Widget>[
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/mekuru.png'),
                  ),
                ),
              ),
              title: Container(
                padding: (EdgeInsets.only(top: 5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Mekuru Ramen',
                        style: TextStyle(
                            fontSize: 16, color: Color(0xff3b3b3b), height: 2)),
                    Row(
                      children: <Widget>[
                        Text('Head Chef',
                            style: TextStyle(
                                fontFamily: 'VarelaRound',
                                fontSize: 13,
                                color: Color(0xff3b3b3b))),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Material(
                            elevation: 1.0,
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color(0xff65be3e),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              child: Text('Full Time',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                      height: 1.3)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on,
                            size: 10, color: Color(0xff8997a7)),
                        Flexible(
                            child: Text('Pontianak, West Borneo',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff8997a7),
                                    height: 1.3))),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('Salary: ',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff8997a7),
                                height: 1.3)),
                        Text(
                            FlutterMoneyFormatter(
                                    amount: 5000000,
                                    settings: MoneyFormatterSettings(
                                        symbol: 'Rp',
                                        thousandSeparator: '.',
                                        fractionDigits: 0))
                                .output
                                .symbolOnLeft,
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff3b3b3b),
                                height: 1.3)),
                        Text(' / Month',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff3b3b3b),
                                height: 1.3)),
                      ],
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(JobDetails.routeName);
              },
            ),
            // Padding(
            //   padding: EdgeInsets.only(top: 6),
            //   child: Consumer<Job>(
            //     builder: (ctx, job, _) => IconButton(
            //       icon: Icon(
            //           job.isSave ? MdiIcons.bookmark : MdiIcons.bookmarkOutline,
            //           color: Theme.of(context).colorScheme.onPrimary),
            //       onPressed: () {
            //         job.toggleSavePosts();
            //         Scaffold.of(context).showSnackBar(
            //           SnackBar(
            //             duration: Duration(seconds: 1),
            //             content:
            //                 Text('Save', style: TextStyle(color: Colors.white)),
            //           ),
            //         );
            //       },
            //     ),
            //   ),
            // ),
          ],
        ),
        Divider(height: 10),
        //   ),
        // ),
        //  Dismissible(
        //   direction: DismissDirection.endToStart,
        //   confirmDismiss: (direction) {
        //     return showDialog(
        //         context: context,
        //         builder: (ctx) => AlertDialog(
        //               title: Text('Are you sure?'),
        //               content: Text('Do you want to remove the job from the list?'),
        //               actions: <Widget>[
        //                 FlatButton(
        //                   child: Text('No'),
        //                   onPressed: () {
        //                     Navigator.of(ctx).pop(false);
        //                   },
        //                 ),
        //                 FlatButton(
        //                   child: Text('Yes'),
        //                   onPressed: () {
        //                     Navigator.of(ctx).pop(true);
        //                   },
        //                 ),
        //               ],
        //             ));
        //   },
        //   onDismissed: (direction) {},
        //   // key: ValueKey(job.id),
        //   background: Container(
        //     color: Theme.of(context).errorColor,
        //     child: Icon(
        //       Icons.delete,
        //       color: Colors.white,
        //       size: 30,
        //     ),
        //     alignment: Alignment.centerRight,
        //     padding: EdgeInsetsDirectional.only(end: 20),
        //   ),
        //   child: Container(
        //     padding: EdgeInsets.only(bottom: 10),
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(0),
        //       color: Colors.white,
        //       boxShadow: [
        //         BoxShadow(
        //             color: Color(0xff0c0c0c0),
        //             blurRadius: 1.5,
        //             offset: Offset(1.0, 1.0))
        //       ],
        //     ),
        //     child:
        Stack(
          alignment: Alignment(1.06, -2),
          children: <Widget>[
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/mekuru.png'),
                  ),
                ),
              ),
              title: Container(
                padding: (EdgeInsets.only(top: 5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Mekuru Ramen',
                        style: TextStyle(
                            fontSize: 16, color: Color(0xff3b3b3b), height: 2)),
                    Row(
                      children: <Widget>[
                        Text('Assistant Chef',
                            style: TextStyle(
                                fontFamily: 'VarelaRound',
                                fontSize: 13,
                                color: Color(0xff3b3b3b))),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Material(
                            elevation: 1.0,
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color(0xfffb4848),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              child: Text('Part Time',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9,
                                      height: 1.3)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on,
                            size: 10, color: Color(0xff8997a7)),
                        Flexible(
                            child: Text('Pontianak, West Borneo',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff8997a7),
                                    height: 1.3))),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('Salary: ',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff8997a7),
                                height: 1.3)),
                        Text(
                            FlutterMoneyFormatter(
                                    amount: 3000000,
                                    settings: MoneyFormatterSettings(
                                        symbol: 'Rp',
                                        thousandSeparator: '.',
                                        fractionDigits: 0))
                                .output
                                .symbolOnLeft,
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff3b3b3b),
                                height: 1.3)),
                        Text(' / Month',
                            style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff3b3b3b),
                                height: 1.3)),
                      ],
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(JobDetails.routeName);
              },
            ),
            // Padding(
            //   padding: EdgeInsets.only(top: 6),
            //   child: Consumer<Job>(
            //     builder: (ctx, job, _) => IconButton(
            //       icon: Icon(
            //           job.isSave ? MdiIcons.bookmark : MdiIcons.bookmarkOutline,
            //           color: Theme.of(context).colorScheme.onPrimary),
            //       onPressed: () {
            //         job.toggleSavePosts();
            //         Scaffold.of(context).showSnackBar(
            //           SnackBar(
            //             duration: Duration(seconds: 1),
            //             content:
            //                 Text('Save', style: TextStyle(color: Colors.white)),
            //           ),
            //         );
            //       },
            //     ),
            //   ),
            // ),
          ],
        ),
        Divider(height: 10),
        //   ),
        // ),
      ],
    );
  }
}
