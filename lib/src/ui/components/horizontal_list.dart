import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:provider/provider.dart';

import 'package:space/src/core/models/job.dart';
import 'package:space/src/ui/seeker/layout/job_details.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final job = Provider.of<Job>(context, listen: false);
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5),
          child: MaterialButton(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(JobDetails.routeName, arguments: job.id);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                    child: Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text('Image.network(job.imageUrl)'),
                )),
                Text('job.employerName',
                    style: TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold, height: 2)),
                Text(job.title,
                    style:
                        TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                Row(
                  children: <Widget>[
                    Text('Salary: ', style: TextStyle(fontSize: 8)),
                    Text(
                        FlutterMoneyFormatter(
                                amount: job.salary,
                                settings: MoneyFormatterSettings(
                                    symbol: 'Rp',
                                    thousandSeparator: '.',
                                    fractionDigits: 0))
                            .output
                            .symbolOnLeft,
                        style: TextStyle(fontSize: 8)),
                  ],
                ),
                Text(job.workingday, style: TextStyle(fontSize: 8)),
                Text(job.workinghour, style: TextStyle(fontSize: 8)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
