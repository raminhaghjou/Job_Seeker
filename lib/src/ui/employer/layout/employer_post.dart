import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:provider/provider.dart';

import 'package:space/src/ui/employer/layout/employer_edit_post.dart';
import 'package:space/src/core/models/jobs.dart';
import 'package:space/src/ui/seeker/layout/job_details.dart';

class EmployerPost extends StatelessWidget {
  final String id;
  final double salary;
  final String title;
  final String type;
  final String location;

  EmployerPost(
    this.id,
    this.salary,
    this.title,
    this.type,
    this.location,
  );

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
                        Text(title,
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
                              child: Text(type,
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
                        Text(location,
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
                                    amount: salary,
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
                Navigator.of(context)
                    .pushNamed(JobDetails.routeName, arguments: id);
              }),
          Padding(
            padding: EdgeInsets.only(right: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(EditPost.routeName, arguments: id);
                  },
                  icon: Icon(Icons.edit),
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () async {
                    try {
                      await Provider.of<Jobs>(context, listen: false)
                          .deleteJob(id);
                    } catch (error) {
                      scaffold.showSnackBar(
                        SnackBar(
                          content: Text(
                            'Deleting failed!',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                    }
                  },
                  color: Theme.of(context).errorColor,
                ),
              ],
            ),
// PopupMenuButton(
//             onSelected: (PostOptions selectedValue) {
//               setState(() {
//                 if (selectedValue == PostOptions.Edit) {
//                   _showOnlyFavorites = true;
//                 } else {
//                   _showOnlyFavorites = false;
//                 }
//               });
//             },
//             icon: Icon(
//               Icons.more_vert,
//             ),
//             itemBuilder: (_) => [
//                   PopupMenuItem(
//                     child: Text('Edit'),
//                     value: PostOptions.Edit,
//                   ),
//                   PopupMenuItem(
//                     child: Text('Delete'),
//                     value: PostOptions.Delete,
//                   ),
//                 ],
//           ),
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
