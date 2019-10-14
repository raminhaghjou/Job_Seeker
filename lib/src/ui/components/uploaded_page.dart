import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class LandingUploaded extends StatefulWidget {
  const LandingUploaded({ Key key, String title }) : super(key: key);
  @override
  _LandingUploadedState createState() => _LandingUploadedState();
}

class _LandingUploadedState extends State<LandingUploaded> with SingleTickerProviderStateMixin {

  
  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints viewportConstraints) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context,true);
          },
          icon: Icon(FeatherIcons.chevronLeft, color: Color(0xff2c4057), size: 16)),
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text('Profile', style: style.copyWith(color: Color(0xff2c4057), 
        fontSize: 14, fontWeight: FontWeight.w500,letterSpacing: 1,)),
    ),

    body: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: viewportConstraints.maxHeight,
            ),
              child: Container(
      child: Column(children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 25, left: 50),
          child: Image.asset('assets/background-1.png'),
          ),
          Container(
            padding: EdgeInsets.only(left: 60, top: 15, right: 60, bottom: 30),
          child: Image.asset('assets/vector-1.png'),
          ),
        ],
      ),
      Stack(children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 10),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(90)
            ),
          ),
           Container(
            margin: EdgeInsets.only(top: 20, left: 10),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(90)
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 23),
          child: Icon(FeatherIcons.uploadCloud, color: Color(0xff8997a7), size: 35)
          ),
      ],),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[
          Text('Good Luck !', style: style.copyWith(fontSize: 35, color: Color(0xff8997a7))),
          Text("Your CV has succesfully uploaded and under review. Don’t lost your chances, always check your inbox and notifications!Thanks for apply in this job.",
            textAlign: TextAlign.center,
            style: style.copyWith(color: Color(0xff8997a7), fontSize: 15, height: 1.7))
          ],),
          ),
      ],),
    ),
    ),
    );
    }
    );
  }
} 