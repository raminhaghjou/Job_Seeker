import 'package:flutter/material.dart';
import 'package:space/src/ui/chat/chat_employer.dart';
import 'package:space/src/ui/seeker/layout/seeker_profile_view.dart';

class ChatListEmployer extends StatefulWidget {
  @override
  _ChatListEmployerState createState() => _ChatListEmployerState();
}

class _ChatListEmployerState extends State<ChatListEmployer>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Inbox',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3b3b3b))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                  leading: Stack(
                    alignment: Alignment(1, -1),
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SeekerProfileView()));
                        },
                        child: CircleAvatar(
                          backgroundColor: Color(0xff757575),
                          radius: 20.0,
                          child: Image.asset(
                            'assets/img_profile-1.png',
                            scale: 3.3,
                          ),
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
                  title: Text('Mekuru Ramen',
                      style: TextStyle(fontSize: 16, color: Color(0xff757575))),
                  subtitle: Text('Hello, New job offers for you',
                      style: TextStyle(fontSize: 14, color: Color(0xff757575))),
                  trailing: Text('03:57 AM',
                      style: TextStyle(fontSize: 12, color: Color(0xff757575))),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChatEmployer()));
                  }),
            ),
            Container(
              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Divider(color: Color(0xffc9c8c8)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                leading: Stack(
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
                          size: 10, color: Color(0xfffca467)),
                    ),
                  ],
                ),
                title: Text('Diamonds Group',
                    style: TextStyle(fontSize: 16, color: Color(0xff757575))),
                subtitle: Text('Hello, New job offers for you',
                    style: TextStyle(fontSize: 14, color: Color(0xff757575))),
                trailing: Text('03:57 AM',
                    style: TextStyle(fontSize: 12, color: Color(0xff757575))),
              ),
            ),
            Container(
              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Divider(color: Color(0xffc9c8c8)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                leading: Stack(
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
                          size: 10, color: Color(0xfffc6767)),
                    ),
                  ],
                ),
                title: Text('Pull n Beat',
                    style: TextStyle(fontSize: 16, color: Color(0xff757575))),
                subtitle: Text('Hello, New job offers for you',
                    style: TextStyle(fontSize: 14, color: Color(0xff757575))),
                trailing: Text('03:57 AM',
                    style: TextStyle(fontSize: 12, color: Color(0xff757575))),
              ),
            ),
            Container(
              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Divider(color: Color(0xffc9c8c8)),
            ),
          ],
        ),
      ),
    );
  }
}
