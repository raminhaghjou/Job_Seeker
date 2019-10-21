import 'package:flutter/material.dart';

class IncomingCall extends StatefulWidget {
  const IncomingCall({ Key key, String title }) : super(key: key);
  @override
  _IncomingCallState createState() => _IncomingCallState();
}

class _IncomingCallState extends State<IncomingCall> with SingleTickerProviderStateMixin {

  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 24.0, color: Colors.white);
  
  @override
  Widget build(BuildContext context) {

    return  Scaffold(      
    body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background-2.png'),
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.multiply),
            fit: BoxFit.cover
          ),
        ),  
       child: Container(
         margin: EdgeInsets.only(top: 130, bottom: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
        Column(
          children: <Widget>[
        CircleAvatar(
         backgroundColor: Colors.white,
         radius: 80,
         child: Image.asset('assets/mekuru_2.png', fit: BoxFit.cover),
        ),
        SizedBox(
          height:20 
        ),
        Text('Mekuru Ramen', style: style.copyWith()),
        ],),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
        MaterialButton(
          padding: EdgeInsets.all(20),
          onPressed: (){},
          child: Icon(Icons.phone, color: Colors.white, size: 35),
          color: Color(0xff57b22f),
          shape: CircleBorder()
        ),
        MaterialButton(
          padding: EdgeInsets.all(20),
          onPressed: (){},
          child: Icon(Icons.call_end, color: Colors.white, size: 35),
          color: Color(0xfffd2e61),
          shape: CircleBorder()
        )
        ],),
       
        
    
        ],),
      ),
  
    ),
    
  
    );
  }
} 