import 'package:flutter/material.dart';

class OnCallingEMployer extends StatefulWidget {
  @override
  _OnCallingEMployerState createState() => _OnCallingEMployerState();
}

class _OnCallingEMployerState extends State<OnCallingEMployer>
    with SingleTickerProviderStateMixin {
  TextStyle style =
      TextStyle(fontFamily: 'VarelaRound', fontSize: 24.0, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 30, left: 30),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background-2.png'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MaterialButton(
                padding: EdgeInsets.all(10),
                onPressed: () {},
                child: Icon(Icons.mic_off, color: Colors.white, size: 35),
                color: Colors.transparent,
                shape: CircleBorder(side: BorderSide(color: Colors.white))),
            SizedBox(
              height: 10,
            ),
                MaterialButton(
                    padding: EdgeInsets.all(10),
                    onPressed: () {
                  Navigator.popAndPushNamed(
                        context,
                        '/employer-interview');
                },
                child: Icon(Icons.call_end, color: Colors.white, size: 35),
                color: Color(0xfffd2e61),
                shape: CircleBorder()),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
                padding: EdgeInsets.all(10),
                onPressed: () {},
                child: Icon(Icons.volume_up, color: Colors.white, size: 35),
                color: Colors.transparent,
                shape: CircleBorder(side: BorderSide(color: Colors.white))),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: 140,
              child: Image.asset('assets/ketapang.png', fit: BoxFit.cover),
            )
          ],
        ),
      ),
    );
  }
}
