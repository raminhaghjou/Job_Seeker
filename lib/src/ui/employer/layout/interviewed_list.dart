import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:space/src/ui/seeker/layout/seeker_profile_view.dart';

class InterviewedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color(0xff0c0c0c0),
                  blurRadius: 1.5,
                  offset: Offset(1.0, 1.0))
            ],
          ),
          child: Stack(
            alignment: Alignment(1.06, -2),
            children: <Widget>[
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SeekerProfileView()),
                  );
                },
                leading: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/img_profile-2.png'),
                      backgroundColor: Colors.blue,
                      radius: 28,
                    ),
                  ],
                ),
                title: Container(
                  height: 60,
                  padding: (EdgeInsets.only(top: 5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('James Cahyadi',
                          style: TextStyle(
                              fontSize: 12, color: Color(0xff3b3b3b))),
                      Text('Male, 30 years old',
                          style: TextStyle(
                              fontSize: 12, color: Color(0xff3b3b3b))),
                      Text('Education: High School',
                          style: TextStyle(
                              fontSize: 12, color: Color(0xff3b3b3b))),
                    ],
                  ),
                ),
                subtitle: Container(
                  height: 30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Exp: ",
                            style: TextStyle(
                              fontFamily: 'VarelaRound',
                              color: Color(0xff8997a7),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            )),
                        TextSpan(
                            text: '2 years as Barista',
                            style: TextStyle(
                              fontFamily: 'VarelaRound',
                              color: Color(0xff3b3b3b),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            )),
                      ])),
                      Row(
                        children: <Widget>[
                          Icon(FeatherIcons.mapPin,
                              size: 10, color: Color(0xff8997a7)),
                          Text(' Pontianak, West Borneo',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff8997a7)))
                        ],
                      ),
                    ],
                  ),
                ),
                trailing: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Color(0xff65be3e),
                    onPressed: () {},
                    child: Text('Hired',
                        style: TextStyle(color: Colors.white, fontSize: 14))),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color(0xff0c0c0c0),
                  blurRadius: 1.5,
                  offset: Offset(1.0, 1.0))
            ],
          ),
          child: Stack(
            alignment: Alignment(1.06, -2),
            children: <Widget>[
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SeekerProfileView()),
                  );
                },
                leading: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/img_profile-2.png'),
                      backgroundColor: Colors.blue,
                      radius: 28,
                    ),
                  ],
                ),
                title: Container(
                  height: 60,
                  padding: (EdgeInsets.only(top: 5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Roni Soebedjo',
                          style: TextStyle(
                              fontSize: 12, color: Color(0xff3b3b3b))),
                      Text('Male, 28 years old',
                          style: TextStyle(
                              fontSize: 12, color: Color(0xff3b3b3b))),
                      Text('Education: High School',
                          style: TextStyle(
                              fontSize: 12, color: Color(0xff3b3b3b))),
                    ],
                  ),
                ),
                subtitle: Container(
                  height: 30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Exp: ",
                            style: TextStyle(
                              fontFamily: 'VarelaRound',
                              color: Color(0xff8997a7),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            )),
                        TextSpan(
                            text: '2 years as Chef',
                            style: TextStyle(
                              fontFamily: 'VarelaRound',
                              color: Color(0xff3b3b3b),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            )),
                      ])),
                      Row(
                        children: <Widget>[
                          Icon(FeatherIcons.mapPin,
                              size: 10, color: Color(0xff8997a7)),
                          Text(' Pontianak, West Borneo',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff8997a7)))
                        ],
                      ),
                    ],
                  ),
                ),
                trailing: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Color(0xff8997a7),
                    onPressed: () {},
                    child: Text('Hold',
                        style: TextStyle(color: Colors.white, fontSize: 14))),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color(0xff0c0c0c0),
                  blurRadius: 1.5,
                  offset: Offset(1.0, 1.0))
            ],
          ),
          child: Stack(
            alignment: Alignment(1.06, -2),
            children: <Widget>[
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SeekerProfileView()),
                  );
                },
                leading: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/img_profile-2.png'),
                      backgroundColor: Colors.blue,
                      radius: 28,
                    ),
                  ],
                ),
                title: Container(
                  height: 60,
                  padding: (EdgeInsets.only(top: 5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Icha Yuni',
                          style: TextStyle(
                              fontSize: 12, color: Color(0xff3b3b3b))),
                      Text('Female, 27 years old',
                          style: TextStyle(
                              fontSize: 12, color: Color(0xff3b3b3b))),
                      Text('Education: High School',
                          style: TextStyle(
                              fontSize: 12, color: Color(0xff3b3b3b))),
                    ],
                  ),
                ),
                subtitle: Container(
                  height: 30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Exp: ",
                            style: TextStyle(
                              fontFamily: 'VarelaRound',
                              color: Color(0xff8997a7),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            )),
                        TextSpan(
                            text: '5 years as Waitress',
                            style: TextStyle(
                              fontFamily: 'VarelaRound',
                              color: Color(0xff3b3b3b),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            )),
                      ])),
                      Row(
                        children: <Widget>[
                          Icon(FeatherIcons.mapPin,
                              size: 10, color: Color(0xff8997a7)),
                          Text(' Pontianak, West Borneo',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff8997a7)))
                        ],
                      ),
                    ],
                  ),
                ),
                trailing: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Color(0xfffb4848),
                    onPressed: () {},
                    child: Text('Rejected',
                        style: TextStyle(color: Colors.white, fontSize: 14))),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color(0xff0c0c0c0),
                  blurRadius: 1.5,
                  offset: Offset(1.0, 1.0))
            ],
          ),
          child: Stack(
            alignment: Alignment(1.06, -2),
            children: <Widget>[
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SeekerProfileView()),
                  );
                },
                leading: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/img_profile-2.png'),
                      backgroundColor: Colors.blue,
                      radius: 28,
                    ),
                  ],
                ),
                title: Container(
                  height: 60,
                  padding: (EdgeInsets.only(top: 5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('John Ru',
                          style: TextStyle(
                              fontSize: 12, color: Color(0xff3b3b3b))),
                      Text('Male, 35 years old',
                          style: TextStyle(
                              fontSize: 12, color: Color(0xff3b3b3b))),
                      Text('Education: S2',
                          style: TextStyle(
                              fontSize: 12, color: Color(0xff3b3b3b))),
                    ],
                  ),
                ),
                subtitle: Container(
                  height: 30,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Exp: ",
                            style: TextStyle(
                              fontFamily: 'VarelaRound',
                              color: Color(0xff8997a7),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            )),
                        TextSpan(
                            text: '10 years as Butcher',
                            style: TextStyle(
                              fontFamily: 'VarelaRound',
                              color: Color(0xff3b3b3b),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            )),
                      ])),
                      Row(
                        children: <Widget>[
                          Icon(FeatherIcons.mapPin,
                              size: 10, color: Color(0xff8997a7)),
                          Text(' Pontianak, West Borneo',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff8997a7)))
                        ],
                      ),
                    ],
                  ),
                ),
                trailing: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Color(0xff65be3e),
                    onPressed: () {},
                    child: Text('Hired',
                        style: TextStyle(color: Colors.white, fontSize: 14))),
              ),
            ],
          ),
        ),
      ],
    );
  }
}