import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
  ),
  home: const UiInviteFriends(),
);
  }
}


class UiInviteFriends extends StatefulWidget {
  const UiInviteFriends({ Key key, String title }) : super(key: key);
  @override
  _UiInviteFriendsState createState() => _UiInviteFriendsState();
}

class _UiInviteFriendsState extends State<UiInviteFriends> with SingleTickerProviderStateMixin {

  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0, color: Colors.white);

  @override
  Widget build(BuildContext context) {

return Container(
       decoration: new BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/vector-5.png'),
          fit: BoxFit.cover
        )
        ),
      
      child: Scaffold(
    backgroundColor: Colors.transparent,
  appBar: AppBar(
        title: Text('Invite Friends', style: style.copyWith(color: Colors.white, fontSize: 14, letterSpacing: 1)),
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context,true);
          },
          icon: Icon(FeatherIcons.chevronLeft, color: Colors.white, size: 16)),
        elevation: 0,
        backgroundColor: Colors.transparent,
  ),
    body: LayoutBuilder(
    builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return Container(         
          height: MediaQuery.of(context).size.height,
        child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
             Padding(
           padding: EdgeInsets.only(top: 20, left: 30, right: 30),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
             Text('Invite Friends', style: style.copyWith(fontSize: 25, fontWeight: FontWeight.bold)),
             Text('Invite your friends to join Dreamjob', style: style.copyWith(fontSize: 16, height: 2)),
           ],),
          ),

          Container(
            margin: EdgeInsets.only(top: 60),
            padding: EdgeInsets.symmetric(horizontal: 50),
           child: Column(
             children: <Widget>[
             Text('Invite your friends to make dreams come true', textAlign: TextAlign.center, style: style.copyWith(fontSize: 22, fontWeight: FontWeight.bold)),
           ],),
          ),

          Center(
          child: Container(
            width: 300,
            padding: EdgeInsets.only(top: 50),
          
          child: RaisedButton(
            padding: EdgeInsets.only(top: 15, bottom: 15, right: 40, left: 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: (){},
            color: Color(0xff2d67a5),
            child: Row(children: <Widget>[ Icon(FontAwesomeIcons.facebookF, color: Colors.white, size: 30),
            Text('   Share on Facebook', style: style.copyWith(color: Colors.white, fontSize: 16)),
            ],),
            
          ),
          ),
          ),
          SizedBox(
            height: 20
          ),
          Center(
          child: Container(
            width: 300,
          child: RaisedButton(
            padding: EdgeInsets.only(top: 18, bottom: 18, right: 40, left: 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: (){},
            color: Colors.white,
            child: Row(children: <Widget>[
            Icon(FeatherIcons.link, color: Color(0xff22c0e8), size: 25),
            Text('   Share Invitation Link', style: style.copyWith(color: Color(0xff22c0e8), fontSize: 16)),
            ],),
            
          ),
          ),
          ),
          ],),
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              alignment: Alignment(-0.7, 0.3),
              children: <Widget>[
                Image.asset('assets/vector-8.png', scale: 5,)
              ],
            ),
          ),
            Image.asset('assets/vector-10.png'),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              alignment: Alignment(0.9, 0.8),
              children: <Widget>[
                Image.asset('assets/vector-9.png', scale: 5)
              ],
            ),
          ),
           ],
          ),
         
      
    
      ); 
    }
    ),
    ),
  
    );
  }
} 