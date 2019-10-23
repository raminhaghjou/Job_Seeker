import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';


class JobDetails extends StatefulWidget {
  static const routeName = '/job-details';

  _JobDetailsState createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
  var _isLoading = false;
  // var _editJob = List<Job>();
// final bool showSaves;

// JobDetails(this.showSaves);

  @override
  Widget build(BuildContext context) {
    // final jobsData = Provider.of<Jobs>(context);
    // final job =  showSaves ? jobsData.savePosts : jobsData.posts;
    // final jobId = ModalRoute.of(context).settings.arguments as String;
    // final authData = Provider.of<Auth>(context, listen: false);
    // final save = Provider.of<Save>(context, listen: false);
    // final loadedJob = Provider.of<Jobs>(
    //   context,
    //   listen: false,
    // ).findById(jobId);
    return Material(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Container(
            child: Image.asset('assets/ketapang.png', fit: BoxFit.cover),
          ),
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
              title: Text('Mekuru Ramen',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  )),
            ),
            body: Container(
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
                                          amount: 5000000,
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
                              Text('Head Chef',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Row(
                                children: <Widget>[
                                  Icon(FeatherIcons.mapPin,
                                      size: 9, color: Color(0xffc4c5c5)),
                                  Text('Pontianak, West Borneo',
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
                              Text('Tuesday - Sunday',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10)),
                              Text('08.00 - 21.30',
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
                                  child: Text('Full Time',
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
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 38,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/mekuru_2.png'),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 190),
                      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(40.0),
                              topRight: const Radius.circular(40.0))),
                      child: ListView(
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
                                    text: 'Our teams are up to date with the latest foods, media trends and are keen to prove themselves in this industry and that’s what you want from a food and beverages industry. Industry: Food and BeveragesOur teams are up to date with the latest foods, media trends and are keen to prove themselves in this industry and that’s what you want from a food and beverages industry. Industry: Food and BeveragesOur teams are up to date with the latest foods, media trends and are keen to prove themselves in this industry and that’s what you want from a food and beverages industry. Industry: Food and BeveragesOur teams are up to date with the latest foods, media trends and are keen to prove themselves in this industry and that’s what you want from a food and beverages industry. Industry: Food and BeveragesOur teams are up to date with the latest foods, media trends and are keen to prove themselves in this industry and that’s what you want from a food and beverages industry. Industry: Food and BeveragesOur teams are up to date with the latest foods, media trends and are keen to prove themselves in this industry and that’s what you want from a food and beverages industry. Industry: Food and Beverages',
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
                                    text: 'Food & Beverages',
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
                                    text: 'High School',
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
                          Text( '• 1+ years experience in F&B company' 
                                '• work with passion and team oriented'
                                '• Kitchen oriented.'
                                '• can work comfortably alongside both jobuction and serving teams'
                                '• a strong written and verbal communicator'
                                '• attention to food serving perfection',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff8997a7),
                                  height: 2)),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Center(
                              child: RaisedButton(
                                  child: _isLoading
                                      ? CircularProgressIndicator()
                                      : Text('Apply for a job',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15)),
                                  color: Color(0xff22c0e8),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (_) => FlareGiffyDialog(
                                              flarePath:
                                                  'assets/space_demo.flr',
                                              flareAnimation: 'loading',
                                              title: Text(
                                                'Sorry, you have been exceeded daily quota.',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'VarelaRound',
                                                  color: Color(0xff3b3b3b),
                                                  fontSize: 14,
                                                ),
                                              ),
                                              buttonOkText: Text('Subscribe',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  )),
                                              buttonOkColor: Color(0xff57b22f),
                                              onOkButtonPressed: () {
                                              },
                                            ));
                                  }),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(MdiIcons.bookmarkOutline, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    duration: Duration(seconds: 1),
                    content:
                        Text('Save', style: TextStyle(color: Colors.white)),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
