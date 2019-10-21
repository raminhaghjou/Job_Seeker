import 'package:flutter/material.dart';
import 'package:space/src/ui/chat/video_ongoing_call.dart';
import 'package:space/src/ui/chat/video_ui_incoming.dart';

class Calling extends StatefulWidget {
  const Calling({Key key, String title}) : super(key: key);
  @override
  _CallingState createState() => _CallingState();
}

class _CallingState extends State<Calling> with SingleTickerProviderStateMixin {
  TextStyle style =
      TextStyle(fontFamily: 'VarelaRound', fontSize: 18.0, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          RaisedButton(
            child: Text('In Coming Call'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => IncomingCall()));
            },
          ),
          RaisedButton(
            child: Text('On Going Call'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Oncalling()));
            },
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background-2.png'),
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.7), BlendMode.multiply),
              fit: BoxFit.cover),
        ),
        child: Container(
          margin: EdgeInsets.only(top: 80, bottom: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 60,
                    child:
                        Image.asset('assets/mekuru_2.png', fit: BoxFit.cover),
                  ),
                  SizedBox(height: 20),
                  Text('Mekuru Ramen', style: style.copyWith(fontSize: 20)),
                  SizedBox(height: 20),
                  Text('contacting...', style: style.copyWith(fontSize: 16)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  MaterialButton(
                      padding: EdgeInsets.all(20),
                      onPressed: () {},
                      child: Icon(Icons.mic_off, color: Colors.white, size: 30),
                      color: Colors.transparent,
                      shape:
                          CircleBorder(side: BorderSide(color: Colors.white))),
                  MaterialButton(
                      padding: EdgeInsets.all(20),
                      onPressed: () {},
                      child:
                          Icon(Icons.call_end, color: Colors.white, size: 30),
                      color: Color(0xfffd2e61),
                      shape: CircleBorder()),
                  MaterialButton(
                      padding: EdgeInsets.all(20),
                      onPressed: () {},
                      child:
                          Icon(Icons.volume_up, color: Colors.white, size: 30),
                      color: Colors.transparent,
                      shape:
                          CircleBorder(side: BorderSide(color: Colors.white))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
