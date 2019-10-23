import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';


class EmployerPost extends StatelessWidget {
  // final String id;
  // final double salary;
  // final String title;
  // final String type;
  // final String location;

  // EmployerPost(
  //   this.id,
  //   this.salary,
  //   this.title,
  //   this.type,
  //   this.location,
  // );

  @override
  Widget build(BuildContext context) {
    final scaffold = Scaffold.of(context);
    return Container(
      child: Stack(
        children: <Widget>[
          ListTile(
              title: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('Mekuru Ramen',
                            style: TextStyle(
                                fontFamily: 'VarelaRound',
                                fontSize: 12,
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
                                      color: Colors.white, fontSize: 9)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              subtitle: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on,
                            size: 10, color: Color(0xff8997a7)),
                        Text('Pontianak, West Borneo',
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff8997a7))),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('Salary: ',
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff8997a7))),
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
                                fontSize: 10, color: Color(0xff3b3b3b))),
                      ],
                    ),
                  ],
                ),
              ),
              // onTap: () {
              //   Navigator.of(context)
              //       .pushNamed(JobDetails.routeName, arguments: id);
              // }
              ),
          Padding(
            padding: EdgeInsets.only(right: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
               PopupMenuButton(
                 icon: Icon(
              Icons.more_vert,
              size: 22,
            ),
            itemBuilder: (_) => [
                  PopupMenuItem(
                    child: Text('Edit'),
                  ),
                  PopupMenuItem(
                    child: Text('Delete'),
                  ),
                ],
        
               )
              ],
            ),

          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.4,
            color: Color(0xffc5cfda),
          ),
        ),
      ),
    );
  }
}
