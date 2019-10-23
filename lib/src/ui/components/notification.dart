import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NotificationUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 18),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: <Widget>[
                  Text('Notifications',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3b3b3b))),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Image.asset('assets/img_profile-1.png', scale: 2.3),
              ),
              title: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Rudy ',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextSpan(
                  text: 'following you.',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ])),
              subtitle: Text('Today 16.42 PM', style: TextStyle(fontSize: 13)),
              trailing: Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: IconButton(
                      onPressed: () {},
                      icon:
                          Icon(MdiIcons.dotsHorizontal, color: Colors.black))),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Image.asset('assets/img_profile-1.png', scale: 2.3),
              ),
              title: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Your Post ',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextSpan(
                  text: 'have 93 Applicants.',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ])),
              subtitle: Text('Today 16.42 PM', style: TextStyle(fontSize: 13)),
              trailing: Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: IconButton(
                      onPressed: () {},
                      icon:
                          Icon(MdiIcons.dotsHorizontal, color: Colors.black))),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Image.asset('assets/img_profile-1.png', scale: 2.3),
              ),
              title: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Rudy ',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextSpan(
                  text: 'following you.',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ])),
              subtitle: Text('Today 16.42 PM', style: TextStyle(fontSize: 13)),
              trailing: Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: IconButton(
                      onPressed: () {},
                      icon:
                          Icon(MdiIcons.dotsHorizontal, color: Colors.black))),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Image.asset('assets/img_profile-1.png', scale: 2.3),
              ),
              title: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Rudy ',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextSpan(
                  text: 'following you.',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ])),
              subtitle: Text('Today 16.42 PM', style: TextStyle(fontSize: 13)),
              trailing: Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: IconButton(
                      onPressed: () {},
                      icon:
                          Icon(MdiIcons.dotsHorizontal, color: Colors.black))),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Image.asset('assets/img_profile-1.png', scale: 2.3),
              ),
              title: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Rudy ',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextSpan(
                  text: 'following you.',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ])),
              subtitle: Text('Today 16.42 PM', style: TextStyle(fontSize: 13)),
              trailing: Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: IconButton(
                      onPressed: () {},
                      icon:
                          Icon(MdiIcons.dotsHorizontal, color: Colors.black))),
              onTap: () {},
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Image.asset('assets/img_profile-1.png', scale: 2.3),
              ),
              title: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'Rudy ',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextSpan(
                  text: 'following you.',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ])),
              subtitle: Text('Today 16.42 PM', style: TextStyle(fontSize: 13)),
              trailing: Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: IconButton(
                      onPressed: () {},
                      icon:
                          Icon(MdiIcons.dotsHorizontal, color: Colors.black))),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
