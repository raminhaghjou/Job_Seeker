import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidable Demo',
      home: SettingUiHelp(title: 'Flutter Slidable Demo'),
    );
  }
}


class SettingUiHelp extends StatefulWidget {
  const SettingUiHelp({ Key key, String title }) : super(key: key);
  @override
  _SettingUiHelpState createState() => _SettingUiHelpState();
}

class _SettingUiHelpState extends State<SettingUiHelp> with SingleTickerProviderStateMixin {

  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context,true);
          },
          icon: Icon(FeatherIcons.chevronLeft, color: Color(0xff2c4057), size: 16)),
        elevation: 1,
        backgroundColor: Colors.white,
         title: Text('Help', style: style.copyWith(color: Color(0xff2c4057), 
         fontSize: 14, fontWeight: FontWeight.w500,letterSpacing: 1,)),
      ),
   
  body: Container(
      height: MediaQuery.of(context).size.height,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
        Text('Help', style: style.copyWith(fontWeight: FontWeight.bold, color: Color(0xff3b3b3b))),
        Text('Get in touch', style: style.copyWith(fontSize: 14, color: Color(0xff3b3b3b))),
        ],),
        ),
        Container(
          color: Color(0xffdedede),
          height: 250,
        ),

        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(20),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          SizedBox(
          width: 120,
          child: Image.asset('assets/logo_vertical.png',)
          ),

          Container(
              margin: EdgeInsets.only(top: 15),
              height: 120,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              Row(children: <Widget>[
              Icon(FeatherIcons.mapPin, size: 12, color: Color(0xff010101)),
              Text('  PELNI Tower, 2nd Floor, Jl. Sultan Abdurahman no 123,',
              style: style.copyWith(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xff010101))),
              ],),
              Padding(
                padding: EdgeInsets.only(left: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Text('Pontianak West Borneo, Indonesia', style: style.copyWith(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xff010101))),
              Text('Dreamjob.id@gmail.com', style: style.copyWith(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xff010101), height: 2)),
              Text('Dreamjob Indonesia', style: style.copyWith(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xff010101), height: 2)),
              Text('Dreamjob.id', style: style.copyWith(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xff010101), height: 2)),
              Text('+62 812 3456 7890', style: style.copyWith(fontSize: 11, fontWeight: FontWeight.bold, color: Color(0xff010101), height: 2)),
              ],),
              ),
            ],)
            ),
          
    
         
        ],),

        
      ),
      ],
      ),
      )
);

  }
}