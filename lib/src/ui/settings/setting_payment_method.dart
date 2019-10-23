import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:international_phone_input/international_phone_input.dart';

class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod>
    with SingleTickerProviderStateMixin {
  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);
  bool save = false;
  String phoneNumber;
  String phoneIsoCode;
  final _formKey = GlobalKey<FormState>();

  void onPhoneNumberChange(
      String number, String internationalizedPhoneNumber, String isoCode) {
    setState(() {
      phoneNumber = number;
      phoneIsoCode = isoCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              icon: Icon(FeatherIcons.chevronLeft,
                  color: Color(0xff2c4057), size: 16)),
          elevation: 1,
          backgroundColor: Colors.white,
          title: Text('Settings',
              style: style.copyWith(
                color: Color(0xff2c4057),
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              )),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 20, left: 5, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                leading: Text('Telkomsel',
                    style:
                        style.copyWith(fontSize: 17, color: Color(0xff3b3b3b))),
                trailing: Image.asset('assets/icon12.png', scale: 1.6),
                onTap: () {},
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 20),
                margin: EdgeInsets.only(bottom: 15),
                height: 0,
                child: Divider(
                  color: Color(0xffc9c8c8),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Payment Method',
                          style: style.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3b3b3b))),
                      Text('Choose your payments',
                          style: style.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff3b3b3b),
                              height: 2)),
                    ]),
              ),
              ListTile(
                  leading: Text('Add Card',
                      style: style.copyWith(
                          fontSize: 17, color: Color(0xff3b3b3b), height: 2)),
                  trailing: Image.asset('assets/icon11.png', scale: 1.6),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text('Add Card',
                                      style: style.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  Text('Card Number',
                                      style: style.copyWith(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          height: 2)),
                                  Container(
                                    margin: EdgeInsets.only(top: 5, bottom: 20),
                                    child: TextField(
                                      style: style.copyWith(
                                          fontSize: 16,
                                          color: Color(0xff8997a7)),
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(10),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xff22c0e8),
                                              width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        fillColor: Color(0xffdcdfe3),
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('Exp Dates',
                                                style: style.copyWith(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.bold,
                                                    height: 2)),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  right: 30,
                                                  top: 5,
                                                  bottom: 10),
                                              child: TextField(
                                                style: style.copyWith(
                                                    fontSize: 16,
                                                    color: Color(0xff8997a7)),
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.all(10),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Color(0xff22c0e8),
                                                        width: 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  fillColor: Color(0xffdcdfe3),
                                                  filled: true,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Flexible(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('Security Code',
                                                style: style.copyWith(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.bold,
                                                    height: 2)),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  right: 30,
                                                  top: 5,
                                                  bottom: 10),
                                              child: TextField(
                                                style: style.copyWith(
                                                    fontSize: 16,
                                                    color: Color(0xff8997a7)),
                                                decoration: InputDecoration(
                                                  focusColor: Colors.yellow,
                                                  contentPadding:
                                                      EdgeInsets.all(10),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Color(0xff22c0e8),
                                                        width: 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  fillColor: Color(0xffdcdfe3),
                                                  filled: true,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Checkbox(
                                        checkColor: Color(0xff22c0e8),
                                        activeColor: Colors.white,
                                        value: save,
                                        onChanged: (bool value) {
                                          setState(() {
                                            save = value;
                                          });
                                        },
                                      ),
                                      Text('SAVE CARD',
                                          style: style.copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  Container(
                                    width: 100,
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(10.0)),
                                      color: Color(0xff22c0e8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('ADD CARD',
                                              style: style.copyWith(
                                                  fontSize: 12,
                                                  color: Colors.white)),
                                        ],
                                      ),
                                      onPressed: () {
                                        if (_formKey.currentState.validate()) {
                                          _formKey.currentState.save();
                                        }
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  }),
              Container(
                padding: EdgeInsets.only(left: 16, right: 20),
                margin: EdgeInsets.only(top: 5),
                height: 5,
                child: Divider(
                  color: Color(0xffc9c8c8),
                ),
              ),
              ListTile(
                  leading: Text('Visa **** **** **** 5967',
                      style: style.copyWith(
                          fontSize: 17, color: Color(0xff3b3b3b), height: 2)),
                  trailing: Image.asset('assets/icon14.png', scale: 1.6)),
              Container(
                padding: EdgeInsets.only(left: 16, right: 20),
                margin: EdgeInsets.only(top: 5),
                height: 5,
                child: Divider(
                  color: Color(0xffc9c8c8),
                ),
              ),
              ListTile(
                  leading: Text('Master **** **** **** 3461',
                      style: style.copyWith(
                          fontSize: 17, color: Color(0xff3b3b3b), height: 2)),
                  trailing: Image.asset('assets/icon13.png', scale: 1.6)),
              Container(
                padding: EdgeInsets.only(left: 16, right: 20),
                margin: EdgeInsets.only(top: 5),
                height: 5,
                child: Divider(
                  color: Color(0xffc9c8c8),
                ),
              ),
              ListTile(
                  leading: Text('Add GoPay',
                      style: style.copyWith(
                          fontSize: 17, color: Color(0xff3b3b3b), height: 2)),
                  trailing: Image.asset('assets/icon15.png', scale: 1.6),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text('Add GoPay',
                                      style: style.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                  Text('Phone Number',
                                      style: style.copyWith(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          height: 2)),
                                  Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: Container(
                                          margin: EdgeInsets.only(top: 5),
                                          child: InternationalPhoneInput(
                                            onPhoneNumberChange:
                                                onPhoneNumberChange,
                                            initialPhoneNumber: phoneNumber,
                                            initialSelection: phoneIsoCode,
                                            hintText: 'eg. 80123456789',
                                          ),
                                        ),
                                      ),
                                      // Flexible(
                                      //   child: Container(
                                      //     margin: EdgeInsets.only(top: 5),
                                      //     child: TextField(
                                      //       style: style.copyWith(
                                      //           fontSize: 16,
                                      //           color: Color(0xff8997a7)),
                                      //       decoration: InputDecoration(
                                      //         focusColor: Colors.yellow,
                                      //         contentPadding:
                                      //             EdgeInsets.all(10),
                                      //         enabledBorder: OutlineInputBorder(
                                      //           borderRadius:
                                      //               BorderRadius.circular(10.0),
                                      //           borderSide: BorderSide(
                                      //               color: Colors.transparent,
                                      //               width: 1),
                                      //         ),
                                      //         focusedBorder: OutlineInputBorder(
                                      //           borderSide: BorderSide(
                                      //               color: Color(0xff22c0e8),
                                      //               width: 1),
                                      //           borderRadius:
                                      //               BorderRadius.circular(10.0),
                                      //         ),
                                      //         fillColor: Color(0xffdcdfe3),
                                      //         filled: true,
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Flexible(
                                          child: Container(
                                        padding: EdgeInsets.only(
                                            top: 30, bottom: 10, right: 10),
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      10.0)),
                                          color: Color(0xff22c0e8),
                                          onPressed: () {
                                            if (_formKey.currentState
                                                .validate()) {
                                              _formKey.currentState.save();
                                            }
                                          },
                                          child: Text('SEND OTP',
                                              style: style.copyWith(
                                                  fontSize: 10,
                                                  color: Colors.white)),
                                        ),
                                      )),
                                      Flexible(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('OTP',
                                                style: style.copyWith(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.bold,
                                                    height: 2)),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 30),
                                              child: TextField(
                                                style: style.copyWith(
                                                    fontSize: 16,
                                                    color: Color(0xff8997a7)),
                                                decoration: InputDecoration(
                                                  focusColor: Colors.yellow,
                                                  contentPadding:
                                                      EdgeInsets.all(10),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Color(0xff22c0e8),
                                                        width: 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  fillColor: Color(0xffdcdfe3),
                                                  filled: true,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('By continuing, you agree to :',
                                          style: style.copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold)),
                                      Text('- Dreamjob Terms of Service',
                                          style: style.copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold)),
                                      Text('- GoPay Terms of Service',
                                          style: style.copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              height: 2)),
                                    ],
                                  ),
                                  Container(
                                    width: 400,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(10.0)),
                                      color: Color(0xff22c0e8),
                                      onPressed: () {
                                        if (_formKey.currentState.validate()) {
                                          _formKey.currentState.save();
                                        }
                                      },
                                      child: Text('Continue',
                                          style: style.copyWith(
                                              fontSize: 12,
                                              color: Colors.white)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  }),
              Container(
                padding: EdgeInsets.only(left: 16, right: 20),
                margin: EdgeInsets.only(top: 5),
                height: 5,
                child: Divider(
                  color: Color(0xffc9c8c8),
                ),
              ),
              ListTile(
                leading: Text('Add OVO',
                    style: style.copyWith(
                        fontSize: 17, color: Color(0xff3b3b3b), height: 2)),
                trailing: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 11,
                    child: Image.asset(
                      'assets/icon16.png',
                      scale: 1.6,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 20),
                margin: EdgeInsets.only(top: 5),
                height: 5,
                child: Divider(
                  color: Color(0xffc9c8c8),
                ),
              ),
            ],
          ),
        ));
  }
}
