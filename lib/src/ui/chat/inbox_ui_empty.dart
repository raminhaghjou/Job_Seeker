import 'package:flutter/material.dart';

class InboxNoMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);
    return new Scaffold(
      backgroundColor: Colors.white,
    body: Container(
      padding: EdgeInsets.only(top: 50, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
      Text('Inbox', style: style.copyWith(fontSize: 32, fontWeight: FontWeight.w600, color: Color(0xff3b3b3b))),
      Text('Information and message will appear here.', style: style.copyWith(fontSize: 15, fontWeight: FontWeight.w600)),
      Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 100),
          child: Image.asset('assets/vector-2.png'),
          ),
        ],
      ),
  
      ]
    ),
    ),
    );
  }
} 