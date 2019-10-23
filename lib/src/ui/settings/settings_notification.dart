import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class SettingNotification extends StatefulWidget {
  const SettingNotification({ Key key, String title }) : super(key: key);
  @override
  _SettingNotificationState createState() => _SettingNotificationState();
}

class _SettingNotificationState extends State<SettingNotification> with SingleTickerProviderStateMixin {

  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0, color: Color(0xff3b3b3b));
  bool _value1 = false;
  bool _value2 = false;

  void _onChanged1(bool value) => setState(() => _value1 = value);
  void _onChanged2(bool value) => setState(() => _value2 = value);

  @override
  Widget build(BuildContext context) {
  
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context,true);
          },
          icon: Icon(FeatherIcons.chevronLeft, color: Color(0xff2c4057), size: 16)),
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text('Notification', style: style.copyWith(color: Color(0xff2c4057), 
        fontSize: 14, fontWeight: FontWeight.w500,letterSpacing: 1,)),
    ),
    body: SingleChildScrollView( 
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 25, 15, 25),
      child: Column(children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Text('Messages', style: style.copyWith(fontSize: 22, fontWeight: FontWeight.w600)),
            Text('Receive messages from job provider', style: style.copyWith(fontSize: 14, fontWeight: FontWeight.w600)),
          ],),
        ),
         Container(
          child: Column(children: <Widget>[
              new SwitchListTile(
                  activeColor: Color(0xff22c0e8),
                  activeTrackColor: Colors.lightBlue[100],
                  inactiveThumbColor: Color(0xff757575),
                  inactiveTrackColor: Colors.black12,
                  value: _value2,
                  onChanged: _onChanged2,
                  title: new Text('Push Notification', style: style.copyWith(fontSize: 18)),
              ),
              Container(
              height: 0,
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Divider(
                color: Color(0xffc9c8c8)
              ),
            ),
              new SwitchListTile(
                  activeColor: Color(0xff22c0e8),
                  activeTrackColor: Colors.lightBlue[100],
                  inactiveThumbColor: Color(0xff757575),
                  inactiveTrackColor: Colors.black12,
                  value: _value2,
                  onChanged: _onChanged2,
                  title: new Text('Email', style: style.copyWith(fontSize: 18)),
              ),
              Container(
              height: 0,
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Divider(
                color: Color(0xffc9c8c8)
              ),
            ),
              new SwitchListTile(
                  activeColor: Color(0xff22c0e8),
                  activeTrackColor: Colors.lightBlue[100],
                  inactiveThumbColor: Color(0xff757575),
                  inactiveTrackColor: Colors.black12,
                  value: _value2,
                  onChanged: _onChanged2,
                  title: new Text('Text Messages', style: style.copyWith(fontSize: 18)),
              ),
              Container(
              height: 0,
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Divider(
                color: Color(0xffc9c8c8)
              ),
            ),
          ],),
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15),
          margin: EdgeInsets.only(top:25),
          height: 70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Text('Reminders', style: style.copyWith(fontSize: 22, fontWeight: FontWeight.w600)),
            Text('Receive schedule reminders, for interview or live interview',
             style: style.copyWith(fontSize: 14, fontWeight: FontWeight.w600)),
          ],),
        ),
        Container(
          child: Column(children: <Widget>[
              new SwitchListTile(
                  activeColor: Color(0xff22c0e8),
                  activeTrackColor: Colors.lightBlue[100],
                  inactiveThumbColor: Color(0xff757575),
                  inactiveTrackColor: Colors.black12,
                  value: _value2,
                  onChanged: _onChanged2,
                  title: new Text('Push Notification', style: style.copyWith(fontSize: 18)),
              ),
              Container(
              height: 0,
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Divider(
                color: Color(0xffc9c8c8)
              ),
            ),
              new SwitchListTile(
                  activeColor: Color(0xff22c0e8),
                  activeTrackColor: Colors.lightBlue[100],
                  inactiveThumbColor: Color(0xff757575),
                  inactiveTrackColor: Colors.black12,
                  value: _value2,
                  onChanged: _onChanged2,
                  title: new Text('Email', style: style.copyWith(fontSize: 18)),
              ),
              Container(
              height: 0,
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Divider(
                color: Color(0xffc9c8c8)
              ),
            ),
              new SwitchListTile(
                  activeColor: Color(0xff22c0e8),
                  activeTrackColor: Colors.lightBlue[100],
                  inactiveThumbColor: Color(0xff757575),
                  inactiveTrackColor: Colors.black12,
                  value: _value2,
                  onChanged: _onChanged2,
                  title: new Text('Text Messages', style: style.copyWith(fontSize: 18)),
              ),
              Container(
              height: 0,
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Divider(
                color: Color(0xffc9c8c8)
              ),
            ),
          ],),
        ),

        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15),
          margin: EdgeInsets.only(top:25),
          height: 70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Text('Promotions', style: style.copyWith(fontSize: 22, fontWeight: FontWeight.w600)),
            Text('Receive coupons, promotion, surveys, updates, and inspiration from Dreamjob.',
             style: style.copyWith(fontSize: 14, fontWeight: FontWeight.w600)),
          ],),
        ),
        Container(
          child: Column(children: <Widget>[
              new SwitchListTile(
                  activeColor: Color(0xff22c0e8),
                  activeTrackColor: Colors.lightBlue[100],
                  inactiveThumbColor: Color(0xff757575),
                  inactiveTrackColor: Colors.black12,
                  value: _value2,
                  onChanged: _onChanged2,
                  title: new Text('Push Notification', style: style.copyWith(fontSize: 18)),
              ),
              Container(
              height: 0,
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Divider(
                color: Color(0xffc9c8c8)
              ),
            ),
              new SwitchListTile(
                  activeColor: Color(0xff22c0e8),
                  activeTrackColor: Colors.lightBlue[100],
                  inactiveThumbColor: Color(0xff757575),
                  inactiveTrackColor: Colors.black12,
                  value: _value2,
                  onChanged: _onChanged2,
                  title: new Text('Email', style: style.copyWith(fontSize: 18)),
              ),
              Container(
              height: 0,
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Divider(
                color: Color(0xffc9c8c8)
              ),
            ),
              new SwitchListTile(
                  activeColor: Color(0xff22c0e8),
                  activeTrackColor: Colors.lightBlue[100],
                  inactiveThumbColor: Color(0xff757575),
                  inactiveTrackColor: Colors.black12,
                  value: _value2,
                  onChanged: _onChanged2,
                  title: new Text('Text Messages', style: style.copyWith(fontSize: 18)),
              ),
              Container(
              height: 0,
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Divider(
                color: Color(0xffc9c8c8)
              ),
            ),
          ],),
        ),

      ],),
     ),
    )
   );
  }
} 