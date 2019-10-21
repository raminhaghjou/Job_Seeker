import 'package:flutter/material.dart';
import 'package:space/src/ui/auth/employer/intro_employer.dart';
import 'package:space/src/ui/auth/seeker/intro_seeker.dart';

class VerifySeeker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 211, 105),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             Stack(
                alignment: Alignment(0, 1),
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 130,vertical: 75),
                    height: 30,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 248, 205),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 140, right: 130, bottom: 55),
                    height: 25,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 248, 205),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 130, right: 130, bottom: 40),
                    height: 25,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 248, 205),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 110, right: 120),
                    height: 45,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 248, 205),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/otp.png',
                      scale: 0.8,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            width: 60,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 248, 205),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 248, 205),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 248, 205),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 248, 205),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 248, 205),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            width: 40,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 248, 205),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 248, 205),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            width: 20,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 248, 205),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Container(
                width: 231,
                height: 231,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 231,
                        height: 52,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 14),
                              child: Text(
                                "Enter your OTP number",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 226, 98, 65),
                                  fontSize: 18,
                                  fontFamily: "Varela Round",
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "We have sent OTP on your number",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 14,
                                fontFamily: "Varela Round",
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 219,
                        height: 95,
                        margin: EdgeInsets.only(top: 84),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 55,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 48,
                                      height: 55,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 255, 248, 205),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(9)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 48,
                                      height: 55,
                                      margin: EdgeInsets.only(left: 9),
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 255, 248, 205),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(9)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Spacer(),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 48,
                                      height: 55,
                                      margin: EdgeInsets.only(right: 9),
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 255, 248, 205),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(9)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 48,
                                      height: 55,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 255, 248, 205),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(9)),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "OTP auto resend in 29 sec",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 14,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: ButtonTheme(
                                height: 40,
                                minWidth: 150,
                                child: RaisedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                IntroSeeker()));
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                  color: Colors.white,
                                  child: Text('Verify',
                                      style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 14)),
                                ),
                              ),
                            )
            ],
          ),
        ),
      ),
    );
  }
}
