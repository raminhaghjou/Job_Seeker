import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
  ),
  home: const Oncalling(),
);
  }
}


class Oncalling extends StatefulWidget {
  const Oncalling({ Key key, String title }) : super(key: key);
  @override
  _OncallingState createState() => _OncallingState();
}

class _OncallingState extends State<Oncalling> with SingleTickerProviderStateMixin {

  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 24.0, color: Colors.white);
  
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
    body: Container(
      padding: EdgeInsets.only(bottom: 30, left: 30),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background-2.png'),
            fit: BoxFit.cover
          ),
        ),  
       child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
        MaterialButton(
          padding: EdgeInsets.all(10),
          onPressed: (){},
          child: Icon(Icons.mic_off, color: Colors.white, size: 35),
          color: Colors.transparent,
          shape: CircleBorder(side: BorderSide(color: Colors.white))
        ),
        SizedBox(
          height: 10,
        ),
        MaterialButton(
          padding: EdgeInsets.all(10),
          onPressed: (){},
          child: Icon(Icons.call_end, color: Colors.white, size: 35),
          color: Color(0xfffd2e61),
          shape: CircleBorder()
        ),
        SizedBox(
          height: 10,
        ),
        MaterialButton(
          padding: EdgeInsets.all(10),
          onPressed: (){},
          child: Icon(Icons.volume_up, color: Colors.white, size: 35),
          color: Colors.transparent,
          shape: CircleBorder(side: BorderSide(color: Colors.white))
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 200,
          width: 140,
          child: Image.asset('assets/ketapang.png', fit: BoxFit.cover),     
        )
        ],),
       
        
    
        
      
  
    ),
    
  
    );
  }
} 