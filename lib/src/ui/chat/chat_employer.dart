import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:space/src/ui/chat/employer_calling.dart';
import 'package:space/src/ui/chat/ongoing_call_employer.dart';

class ChatEmployer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            icon: Icon(FeatherIcons.chevronLeft,
                color: Color(0xff2c4057), size: 14)),
        elevation: 1,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Stack(
              alignment: Alignment(1, -1),
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xff757575),
                  radius: 20.0,
                  child: Image.asset(
                    'assets/img_profile-2.png',
                    scale: 3.3,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.brightness_1,
                      size: 10, color: Color(0xff81c784)),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text('Mekuru Ramen',
                  style: style.copyWith(
                      color: Color(0xff2c4057),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1)),
            ),
          ],
        ),
        centerTitle: true,
        actions: <Widget>[
          // action button
          IconButton(
            icon: Icon(Icons.videocam, color: Color(0xff4d4d4d), size: 33),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EmployerCalling()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 15, bottom: 80),
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  Container(
                    alignment: AlignmentDirectional.topEnd,
                    margin: EdgeInsets.fromLTRB(0, 10, 15, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(40, 10, 10, 10),
                          margin: EdgeInsets.only(bottom: 5, left: 38),
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x11000000),
                                  offset: Offset(
                                      2.121320343559643, 2.1213203435596424),
                                  blurRadius: 21,
                                  spreadRadius: 0)
                            ],
                          ),
                          child: Column(
                            children: [
                              Text(
                                  'Hello, nice to see you again today. Hope you are well.',
                                  style: style.copyWith(
                                      fontSize: 14, color: Color(0xff757575))),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 38),
                          child: Text('03:41 PM',
                              style: style.copyWith(
                                  fontSize: 12, color: Color(0xff757575))),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: <Widget>[
                      Container(),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20),
                        child: Stack(
                          alignment: Alignment(1, -1),
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xff757575),
                              radius: 20.0,
                              child: Image.asset(
                                'assets/img_profile-2.png',
                                scale: 3.3,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Icon(Icons.brightness_1,
                                  size: 10, color: Color(0xff81c784)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    alignment: AlignmentDirectional.topStart,
                    margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 40, 10),
                          margin: EdgeInsets.only(bottom: 5, right: 38),
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x11000000),
                                  offset: Offset(
                                      2.121320343559643, 2.1213203435596424),
                                  blurRadius: 21,
                                  spreadRadius: 0)
                            ],
                          ),
                          child: Column(
                            children: [
                              Text(
                                  'This is my office location. You can visit as per your time.',
                                  style: style.copyWith(
                                      fontSize: 14, color: Color(0xff757575))),
                              Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: Color(0xffbdbdbd),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x11000000),
                                          offset: Offset(2.121320343559643,
                                              2.1213203435596424),
                                          blurRadius: 21,
                                          spreadRadius: 0)
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(right: 38),
                            child: Text('03:42 PM',
                                style: style.copyWith(
                                    fontSize: 12, color: Color(0xff757575)))),
                      ],
                    ),
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: <Widget>[
                      Container(),
                      Container(
                        margin: EdgeInsets.only(top: 20, right: 20),
                        child: Stack(
                          alignment: Alignment(1, -1),
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xff757575),
                              radius: 20.0,
                              child: Image.asset(
                                'assets/img_profile-1.png',
                                scale: 3.3,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Icon(Icons.brightness_1,
                                  size: 10, color: Color(0xff81c784)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    alignment: AlignmentDirectional.topEnd,
                    margin: EdgeInsets.fromLTRB(0, 10, 15, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(40, 10, 10, 10),
                          margin: EdgeInsets.only(bottom: 5, left: 38),
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x11000000),
                                  offset: Offset(
                                      2.121320343559643, 2.1213203435596424),
                                  blurRadius: 21,
                                  spreadRadius: 0)
                            ],
                          ),
                          child: Column(
                            children: [
                              Text(
                                  'Sure, I will visit the location in evening. Is that alright for you.',
                                  style: style.copyWith(
                                      fontSize: 14, color: Color(0xff757575))),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 38),
                            child: Text('03:43 PM',
                                style: style.copyWith(
                                    fontSize: 12, color: Color(0xff757575)))),
                      ],
                    ),
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: <Widget>[
                      Container(),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20),
                        child: Stack(
                          alignment: Alignment(1, -1),
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xff757575),
                              radius: 20.0,
                              child: Image.asset(
                                'assets/img_profile-2.png',
                                scale: 3.3,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Icon(Icons.brightness_1,
                                  size: 10, color: Color(0xff81c784)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    alignment: AlignmentDirectional.topStart,
                    margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 40, 10),
                          margin: EdgeInsets.only(bottom: 5, right: 38),
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x11000000),
                                  offset: Offset(
                                      2.121320343559643, 2.1213203435596424),
                                  blurRadius: 21,
                                  spreadRadius: 0)
                            ],
                          ),
                          child: Column(
                            children: [
                              Text(
                                  'This is my office location. You can visit as per your time.',
                                  style: style.copyWith(
                                      fontSize: 14, color: Color(0xff757575))),
                              Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: Color(0xffbdbdbd),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color(0x11000000),
                                          offset: Offset(2.121320343559643,
                                              2.1213203435596424),
                                          blurRadius: 21,
                                          spreadRadius: 0)
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(right: 38),
                            child: Text('03:44 PM',
                                style: style.copyWith(
                                    fontSize: 12, color: Color(0xff757575)))),
                      ],
                    ),
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: <Widget>[
                      Container(),
                      Container(
                        margin: EdgeInsets.only(top: 20, right: 20),
                        child: Stack(
                          alignment: Alignment(1, -1),
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xff757575),
                              radius: 20.0,
                              child: Image.asset(
                                'assets/img_profile-1.png',
                                scale: 3.3,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Icon(Icons.brightness_1,
                                  size: 10, color: Color(0xff81c784)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    alignment: AlignmentDirectional.topEnd,
                    margin: EdgeInsets.fromLTRB(0, 10, 15, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(40, 10, 10, 10),
                          margin: EdgeInsets.only(bottom: 5, left: 38),
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0x11000000),
                                  offset: Offset(
                                      2.121320343559643, 2.1213203435596424),
                                  blurRadius: 21,
                                  spreadRadius: 0)
                            ],
                          ),
                          child: Column(
                            children: [
                              Text(
                                  'Sure, I will visit the location in evening. Is that alright for you.',
                                  style: style.copyWith(
                                      fontSize: 14, color: Color(0xff757575))),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 38),
                            child: Text('03:44 PM',
                                style: style.copyWith(
                                    fontSize: 12, color: Color(0xff757575)))),
                      ],
                    ),
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: <Widget>[
                      Container(),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20),
                        child: Stack(
                          alignment: Alignment(1, -1),
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xff757575),
                              radius: 20.0,
                              child: Image.asset(
                                'assets/img_profile-2.png',
                                scale: 3.3,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Icon(Icons.brightness_1,
                                  size: 10, color: Color(0xff81c784)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 30.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Material(
                elevation: 1,
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 8.0),
                      Icon(Icons.insert_emoticon,
                          size: 25.0, color: Theme.of(context).hintColor),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: TextField(
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff757575)),
                          textInputAction: TextInputAction.newline,
                          decoration: InputDecoration(
                            hintText: 'Type a message',
                            hintStyle:
                                TextStyle(fontSize: 14, color: Colors.black26),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(Icons.attach_file,
                          size: 25.0, color: Theme.of(context).hintColor),
                      SizedBox(width: 8.0),
                      Icon(Icons.camera_alt,
                          size: 25.0, color: Theme.of(context).hintColor),
                      SizedBox(width: 8.0),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                child: Icon(
                  Icons.send,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
