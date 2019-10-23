import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';


class RecommendedJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final job = Provider.of<Job>(context, listen: false);
    return Row(
      children: <Widget>[
        GestureDetector(
          // onTap: () {
          //   Navigator.of(context)
          //       .pushNamed(JobDetails.routeName, arguments: job.id);
          // },
          child: Container(
            width: 120,
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Material(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 60,
                    child: ClipRRect(
                      borderRadius: new BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: Image.asset(
                        'assets/ketapang.png',
                        width: 120,
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
                        Text('Mekuru Ramen',
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                height: 2)),
                        Text('Assistant Chef',
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            )),
                        Row(
                          children: <Widget>[
                            Text('Salary: ', style: TextStyle(fontSize: 8)),
                            Text(
                                FlutterMoneyFormatter(
                                        amount: 5000000,
                                        settings: MoneyFormatterSettings(
                                            symbol: 'Rp',
                                            thousandSeparator: '.',
                                            fractionDigits: 0))
                                    .output
                                    .symbolOnLeft,
                                maxLines: 1,
                                style: TextStyle(fontSize: 8)),
                            Text(' / M', style: TextStyle(fontSize: 8)),
                          ],
                        ),
                        Text('Tuesday - Sunday',
                            maxLines: 1, style: TextStyle(fontSize: 8)),
                        Text('08.00 - 21.30',
                            maxLines: 1, style: TextStyle(fontSize: 8)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          // onTap: () {
          //   Navigator.of(context)
          //       .pushNamed(JobDetails.routeName, arguments: job.id);
          // },
          child: Container(
            width: 120,
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Material(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 60,
                    child: ClipRRect(
                      borderRadius: new BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: Image.asset(
                        'assets/up2u.png',
                        width: 120,
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
                        Text('Up2u',
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                height: 2)),
                        Text('Cleaning Service',
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            )),
                        Row(
                          children: <Widget>[
                            Text('Salary: ', style: TextStyle(fontSize: 8)),
                            Text(
                                FlutterMoneyFormatter(
                                        amount: 80000,
                                        settings: MoneyFormatterSettings(
                                            symbol: 'Rp',
                                            thousandSeparator: '.',
                                            fractionDigits: 0))
                                    .output
                                    .symbolOnLeft,
                                maxLines: 1,
                                style: TextStyle(fontSize: 8)),
                            Text(' / D', style: TextStyle(fontSize: 8)),
                          ],
                        ),
                        Text('Weekend',
                            maxLines: 1, style: TextStyle(fontSize: 8)),
                        Text('08.00 - 21.30',
                            maxLines: 1, style: TextStyle(fontSize: 8)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          // onTap: () {
          //   Navigator.of(context)
          //       .pushNamed(JobDetails.routeName, arguments: job.id);
          // },
          child: Container(
            width: 120,
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Material(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 60,
                    child: ClipRRect(
                      borderRadius: new BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: Image.asset(
                        'assets/ketapang.png',
                        fit: BoxFit.cover,
                        width: 120,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Mekuru Ramen',
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                height: 2)),
                        Text('Head Chef',
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            )),
                        Row(
                          children: <Widget>[
                            Text('Salary: ', style: TextStyle(fontSize: 8)),
                            Text(
                                FlutterMoneyFormatter(
                                        amount: 5000000,
                                        settings: MoneyFormatterSettings(
                                            symbol: 'Rp',
                                            thousandSeparator: '.',
                                            fractionDigits: 0))
                                    .output
                                    .symbolOnLeft,
                                maxLines: 1,
                                style: TextStyle(fontSize: 8)),
                            Text(' / M', style: TextStyle(fontSize: 8)),
                          ],
                        ),
                        Text('Tuesday - Sunday',
                            maxLines: 1, style: TextStyle(fontSize: 8)),
                        Text('08.00 - 21.30',
                            maxLines: 1, style: TextStyle(fontSize: 8)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          // onTap: () {
          //   Navigator.of(context)
          //       .pushNamed(JobDetails.routeName, arguments: job.id);
          // },
          child: Container(
            width: 120,
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Material(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 60,
                    child: ClipRRect(
                      borderRadius: new BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: Image.asset(
                        'assets/IT.png',
                        width: 120,
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
                        Text('PT.CCTV INDONESIA',
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                height: 2)),
                        Text('CCTV Installer',
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            )),
                        Row(
                          children: <Widget>[
                            Text('Salary: ', style: TextStyle(fontSize: 8)),
                            Text(
                                FlutterMoneyFormatter(
                                        amount: 20000,
                                        settings: MoneyFormatterSettings(
                                            symbol: 'Rp',
                                            thousandSeparator: '.',
                                            fractionDigits: 0))
                                    .output
                                    .symbolOnLeft,
                                maxLines: 1,
                                style: TextStyle(fontSize: 8)),
                            Text(' / H', style: TextStyle(fontSize: 8)),
                          ],
                        ),
                        Text('Freelance',
                            maxLines: 1, style: TextStyle(fontSize: 8)),
                        Text('08.00 - 21.30',
                            maxLines: 1, style: TextStyle(fontSize: 8)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
