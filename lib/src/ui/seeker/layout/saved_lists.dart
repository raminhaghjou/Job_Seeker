import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:space/src/core/models/job.dart';
import 'package:space/src/core/models/save.dart';

import 'package:space/src/ui/seeker/layout/job_details.dart';

class SavePosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final job = Provider.of<Job>(context, listen: false);
    return Dismissible(
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        Provider.of<Save>(context, listen: false).removeItem(job.id);
      },
      key: ValueKey(job.id),
      background: Container(
        color: Theme.of(context).errorColor,
        child: Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
        alignment: Alignment.centerRight,
        padding: EdgeInsetsDirectional.only(end: 20),
      ),
      child: Stack(
        alignment: Alignment(1.06, -2),
        children: <Widget>[
          ListTile(
              leading: Column(
                children: <Widget>[
                  Stack(
                    alignment: Alignment(1, -1),
                    children: [
                      ClipOval(
                           child: Image.network(job.imageUrl, fit: BoxFit.cover, height: 40)
                          ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(JobDetails.routeName,
                              arguments: job.id);
                        },
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff22c0e8),
                          child: Icon(Icons.add, color: Colors.white, size: 14),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              title: Container(
                height: 50,
                padding: (EdgeInsets.only(top: 5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('employerName',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff3b3b3b))),
                    Row(
                      children: <Widget>[
                        Text(job.title,
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
                              child: Text(job.type,
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
                        Flexible(
                            child: Text(job.location,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff8997a7)))),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('Salary: ',
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff8997a7))),
                        Text(
                            FlutterMoneyFormatter(
                                    amount: job.salary,
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
              onTap: () {
                Navigator.of(context).pushNamed(
                  JobDetails.routeName,
                  arguments: job.id,
                );
              }),
        ],
      ),
    );
  }
}
