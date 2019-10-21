import 'package:flutter/material.dart';
import 'package:space/src/ui/auth/employer/intro_employer.dart';
import 'package:space/src/ui/auth/seeker/intro_seeker.dart';
import 'package:space/src/ui/components/verify_otp_employer.dart';

class OTPEmployer extends StatelessWidget {
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
                    margin: EdgeInsets.symmetric(horizontal: 130, vertical: 75),
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
              Text('Enter your mobile number',
                  style: TextStyle(
                      color: Colors.redAccent, fontSize: 18, height: 6)),
              Text('You will get a OTP message',
                  style: TextStyle(
                      color: Colors.white, fontSize: 14, height: 0.3)),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: '(+62) Indonesia',
                    labelStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 14),
                    alignLabelWithHint: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Enter your phone number',
                    labelStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 14),
                    alignLabelWithHint: true,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent),
                    ),
                  ),
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
                              builder: (context) => VerifyEmployer()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.white,
                    child: Text('Verify',
                        style:
                            TextStyle(color: Colors.redAccent, fontSize: 14)),
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
