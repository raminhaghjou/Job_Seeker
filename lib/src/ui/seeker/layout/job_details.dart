import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:space/src/core/models/apply.dart';
import 'package:space/src/core/models/job.dart';

import 'package:space/src/core/models/jobs.dart';

class JobDetails extends StatefulWidget {
  static const routeName = '/job-details';

  _JobDetailsState createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
  var _isLoading = false;
  var _editJob = Job(
    id: null,
    title: '',
    salary: 0,
    description: '',
    type: '',
    workingday: '',
    workinghour: '',
    skill: '',
    education: '',
    industry: '',
    location: '',
    typeSalary: '',
    gender: '',
  );
// final bool showSaves;

// JobDetails(this.showSaves);

  @override
  Widget build(BuildContext context) {
    // final jobsData = Provider.of<Jobs>(context);
    // final job =  showSaves ? jobsData.savePosts : jobsData.posts;
    final jobId = ModalRoute.of(context).settings.arguments as String;
    // final authData = Provider.of<Auth>(context, listen: false);
    // final save = Provider.of<Save>(context, listen: false);
    final loadedJob = Provider.of<Jobs>(
      context,
      listen: false,
    ).findById(jobId);
    return Stack(
      children: <Widget>[
        //  Container(
        //     child: Image.asset('assets/ketapang.png', fit: BoxFit.cover),
        //   ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: true,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                icon: Icon(FeatherIcons.chevronLeft,
                    color: Colors.white, size: 16)),
            elevation: 1,
            backgroundColor: Colors.transparent,
            title: Text('loadedJob.employerName',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                )),
          ),
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                      height: 130,
                      margin: EdgeInsets.only(top: 90),
                      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Color(0xff4d4d4d),
                          borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(40.0),
                              topRight: const Radius.circular(40.0))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Salary',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white)),
                              Text(
                                  FlutterMoneyFormatter(
                                          amount: loadedJob.salary,
                                          settings: MoneyFormatterSettings(
                                              symbol: 'Rp',
                                              thousandSeparator: '.',
                                              fractionDigits: 0))
                                      .output
                                      .symbolOnLeft,
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white)),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(loadedJob.title,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Row(
                                children: <Widget>[
                                  Icon(FeatherIcons.mapPin,
                                      size: 9, color: Color(0xffc4c5c5)),
                                  Text(loadedJob.location,
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0xffc4c5c5))),
                                ],
                              ),
                              Text('Working Hours',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                      height: 2.2)),
                              Text(loadedJob.workingday,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10)),
                              Text(loadedJob.workinghour,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10)),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Type',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white)),
                              Material(
                                elevation: 1.0,
                                borderRadius: BorderRadius.circular(5.0),
                                color: Color(0xff65be3e),
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 4),
                                  child: Text(loadedJob.type,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 9)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                  Container(
                    alignment: AlignmentDirectional.topStart,
                    padding: EdgeInsets.only(
                      top: 50,
                      left: 30,
                    ),
                    child: ClipOval(
                        // child: Image.network(loadedJob.imageUrl, height: 80),
                        ),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height,
                      margin: EdgeInsets.only(top: 190),
                      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(40.0),
                              topRight: const Radius.circular(40.0))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Description: ',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                    text: loadedJob.description,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff8997a7),
                                        height: 2)),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Industry: ',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      height: 2),
                                ),
                                TextSpan(
                                    text: loadedJob.industry,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff8997a7))),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Education Level: ',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                    text: loadedJob.education,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff8997a7),
                                        height: 2)),
                              ],
                            ),
                          ),
                          Text(
                            'Skills required: ',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                height: 2),
                          ),
                          Text(loadedJob.skill,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff8997a7),
                                  height: 2)),
                          SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: RaisedButton(
                              child: _isLoading
                                  ? CircularProgressIndicator()
                                  : Text('Apply for a job',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15)),
                              color: Color(0xff22c0e8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              // onPressed: (_isLoading)
                              //     ? null
                              //     : () async {
                              //         setState(() {
                              //           _isLoading = true;
                              //         });
                              //         await Provider.of<Applys>(context,
                              //                 listen: false)
                              //             .addApply(_editJob);
                              //         setState(() {
                              //           _isLoading = false;
                              //         });
                              //       },
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
          // floatingActionButton: Consumer<Job>(
          //           builder: (ctx, job, _) =>
          //           FloatingActionButton(
          //           child: Icon(
          //             job.isSave ? MdiIcons.bookmark : MdiIcons.bookmarkOutline,
          //             color: Theme.of(context).colorScheme.secondary),
          //             onPressed: () {
          //                   job.toggleSavePosts(
          //                     authData.token,
          //                     authData.userId,
          //                   );
          //             Scaffold.of(context).showSnackBar(
          //               SnackBar(
          //                 duration: Duration(seconds: 1),
          //                 content: Text('Save', style: TextStyle(color:Colors.white)),
          //               ),
          //             );
          //           },
          //       ),
          //     ),
        ),
      ],
    );
  }
}
