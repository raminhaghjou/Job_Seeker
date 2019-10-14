import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class EmployerProfileView extends StatefulWidget {
  @override
  _EmployerProfileViewState createState() => _EmployerProfileViewState();
}

class _EmployerProfileViewState extends State<EmployerProfileView>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Stack(
      children: <Widget>[
        new Container(
          child: new Image.asset('assets/ketapang.png', fit: BoxFit.cover),
        ),
        new Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: true,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                icon: Icon(FeatherIcons.chevronLeft,
                    color: Color(0xff2c4057), size: 16)),
            elevation: 1,
            backgroundColor: Colors.transparent,
            title: Text('Back',
                style: style.copyWith(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                )),
          ),
          body: LayoutBuilder(builder:
              (BuildContext context, BoxConstraints viewportConstraints) {
            return Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                        height: 120,
                        margin: EdgeInsets.only(top: 120),
                        padding: EdgeInsets.only(top: 20, left: 30, right: 30),
                        decoration: BoxDecoration(
                            color: Color(0xff4d4d4d),
                            borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(40.0),
                                topRight: const Radius.circular(40.0))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text('Followers',
                                    style: style.copyWith(
                                        fontSize: 14, color: Colors.white)),
                                Text('31401',
                                    style: style.copyWith(color: Colors.white)),
                              ],
                            ),
                            RaisedButton(
                                onPressed: () {},
                                color: Color(0xff22c0e8),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                child: Text('Follow',
                                    style: style.copyWith(
                                        color: Colors.white, fontSize: 15))),
                          ],
                        )),
                    Container(
                      alignment: AlignmentDirectional.center,
                      margin: EdgeInsets.only(top: 90),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 45.0,
                        child: Image.asset('assets/mekuru_2.png'),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        //Overflow!!
                        Container(
                          height: 330,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(top: 200),
                          padding:
                              EdgeInsets.only(top: 20, left: 15, right: 15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: new BorderRadius.only(
                                  topLeft: const Radius.circular(40.0),
                                  topRight: const Radius.circular(40.0))),
                          child: Column(
                            children: <Widget>[
                              Text('Mekuru Ramen',
                                  style: style.copyWith(
                                      fontSize: 18,
                                      color: Color(0xff222222),
                                      fontWeight: FontWeight.bold)),
                              Text('The Best Ramen in Town',
                                  style: style.copyWith(
                                      fontSize: 11,
                                      color: Color(0xff1c1c1c),
                                      fontWeight: FontWeight.bold)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(FeatherIcons.mapPin,
                                      size: 12, color: Color(0xff8997a7)),
                                  Text('  Pontianak, West Borneo',
                                      style: style.copyWith(
                                          fontSize: 12,
                                          color: Color(0xff8997a7))),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Text('Company Description',
                                      style: style.copyWith(
                                          fontSize: 14,
                                          color: Color(0xff3b3b3b))),
                                  Text(
                                    'We have a number of different teams within our agency that specialise in different areas of business so you can be sure that you won’t receive a generic service and although we can’t boast years and years of service we can ensure you that is a good thing in this industry. Our teams are up to date with the latest technologies, media trends and are keen to prove themselves in this industry and that’s what you want from an advertising agency.',
                                    style: style.copyWith(
                                        fontSize: 11,
                                        color: Color(0xff8997a7),
                                        height: 2),
                                  ),
                                  Center(
                                    child: RaisedButton(
                                        onPressed: () {},
                                        color: Color(0xff8997a7),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Text('Apply for a job',
                                            style: style.copyWith(
                                                color: Colors.white,
                                                fontSize: 15))),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          }),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Color(0xffdcdcdc),
            showUnselectedLabels: true,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.home, size: 30),
                title: Text('HOME',
                    style: TextStyle(
                        fontFamily: 'VarelaRound',
                        color: Color(0xff3b3b3b),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal)),
              ),
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.briefcase, size: 30),
                title: Text('JOBS',
                    style: TextStyle(
                        fontFamily: 'VarelaRound',
                        color: Color(0xff3b3b3b),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal)),
              ),
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.search, size: 30),
                title: Text('SEARCH',
                    style: TextStyle(
                        fontFamily: 'VarelaRound',
                        color: Color(0xff3b3b3b),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal)),
              ),
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.messageSquare, size: 30),
                title: Text('INBOX',
                    style: TextStyle(
                        fontFamily: 'VarelaRound',
                        color: Color(0xff3b3b3b),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal)),
              ),
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.user, size: 30),
                title: Text('PROFILE',
                    style: TextStyle(
                        fontFamily: 'VarelaRound',
                        color: Color(0xff3b3b3b),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal)),
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Color(0xff4d4d4d),
            onTap: _onItemTapped,
          ),
        ),
      ],
    ));
  }
}
