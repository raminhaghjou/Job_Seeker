import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:space/src/ui/employer/layout/employer_profile_view.dart';

class SearchByLocation extends StatefulWidget {
  @override
  _SearchByLocationState createState() => _SearchByLocationState();
}

class _SearchByLocationState extends State<SearchByLocation>
    with SingleTickerProviderStateMixin {
  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              icon: Icon(FeatherIcons.chevronLeft,
                  color: Color(0xff2c4057), size: 16)),
          elevation: 1,
          backgroundColor: Colors.white,
          title: Text('Search by location',
              style: style.copyWith(
                color: Color(0xff2c4057),
                fontSize: 14,
                letterSpacing: 1,
              )),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Container(
                color: Color(0xffdedede),
                height: 350,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                            width: 150,
                            child: Image.asset(
                              'assets/ketapang.png',
                            )),
                        Container(
                          height: 25,
                          child: Row(
                            children: <Widget>[
                              Icon(FontAwesomeIcons.twitterSquare,
                                  size: 15, color: Color(0xff2ddbf5)),
                              Text('  Twitter',
                                  style: style.copyWith(
                                      fontSize: 10, color: Color(0xff2ddbf5))),
                            ],
                          ),
                        ),
                        Container(
                          height: 25,
                          child: Row(
                            children: <Widget>[
                              Icon(FontAwesomeIcons.facebookSquare,
                                  size: 15, color: Color(0xff4267b2)),
                              Text('  Facebook',
                                  style: style.copyWith(
                                      fontSize: 10, color: Color(0xff4267b2))),
                            ],
                          ),
                        ),
                        Container(
                          height: 25,
                          child: Row(
                            children: <Widget>[
                              Icon(FontAwesomeIcons.googlePlusSquare,
                                  size: 15, color: Color(0xffdb4a39)),
                              Text('  Google+',
                                  style: style.copyWith(
                                      fontSize: 10, color: Color(0xffdb4a39))),
                            ],
                          ),
                        ),
                        Container(
                          height: 25,
                          child: Row(
                            children: <Widget>[
                              Icon(FontAwesomeIcons.externalLinkSquareAlt,
                                  size: 15, color: Color(0xff8997a7)),
                              Text('  www.mekururamen.com',
                                  style: style.copyWith(
                                      fontSize: 10, color: Color(0xff8997a7))),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height / 3.8,
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Mekuru Ramen',
                                style: style.copyWith(fontSize: 16)),
                            Text('The Best Ramen in Town',
                                style: style.copyWith(
                                    fontSize: 10, color: Color(0xff3b3b3b))),
                            Row(
                              children: <Widget>[
                                Icon(FontAwesomeIcons.mapMarkerAlt,
                                    size: 10, color: Color(0xff8997a7)),
                                Text(' Pontianak, West Borneo',
                                    style: style.copyWith(
                                        fontSize: 10, color: Color(0xff8997a7)))
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Center(
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(30.0)),
                                    color: Color(0xff8997a7),
                                    child: Text('Apply for a job',
                                        style: style.copyWith(
                                            color: Colors.white, fontSize: 14)),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          new MaterialPageRoute(
                                              builder: (context) =>
                                                  new EmployerProfileView()));
                                    },
                                  ),
                                ),
                                RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0)),
                                  color: Color(0xff22c0e8),
                                  child: Text('Follow',
                                      style: style.copyWith(
                                          color: Colors.white, fontSize: 14)),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
