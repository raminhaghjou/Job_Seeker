import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'package:space/src/core/models/job.dart';
import 'package:space/src/ui/seeker/layout/job_details.dart';

class RecommendedJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final job = Provider.of<Job>(context, listen: false);
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(JobDetails.routeName, arguments: job.id);
      },
      child: Container(
        width: 120,
        height: 60,
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Material(
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: <Widget>[
              Container(
                  height: 60,
                  child: ClipRRect(
                    borderRadius: new BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                    child: SvgPicture.asset(
                      'assets/ketapang.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(job.employerName,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            height: 2)),
                    Text(job.title,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        )),
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
            ],
          ),
        ),
      ),
    );
  }
}
