import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CVSeeker extends StatefulWidget {
  static const routeName = '/cv-seeker';

  @override
  _CVSeekerState createState() => _CVSeekerState();
}

class _CVSeekerState extends State<CVSeeker> {
  var _isLoading = false;

  String gender;
  String industry;
  String type;
  String typeSalary;
  String education;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Form(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  vertical: 50,
                ),
                child: Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text("CV Details",
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color(0xff2c4057),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 2)),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                  margin: EdgeInsets.only(
                                      left: 130.0, right: 130.0),
                                  child: Divider(
                                      thickness: 2,
                                      color: Color(0xff22c0e8),
                                      height: 30)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                      child: TextFormField(
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 14,
                            letterSpacing: 0.25,
                          ),
                          decoration: InputDecoration(
                              labelText: "Full Name",
                              labelStyle: TextStyle(
                                  color: Color(0xff8997a7), fontSize: 14),
                              filled: true,
                              fillColor: Color(0xffdcdfe3),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Theme.of(context).errorColor)),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Theme.of(context).errorColor)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff22c0e8))),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                          textInputAction: TextInputAction.next),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                      child: FormField<String>(
                        builder: (FormFieldState<String> state) {
                          return InputDecorator(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                                errorStyle: TextStyle(
                                    color: Colors.redAccent, fontSize: 16.0),
                                filled: true,
                                fillColor: Color(0xffdcdfe3),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).errorColor)),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).errorColor)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff22c0e8))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)))),
                            child: DropdownButtonFormField<String>(
                              decoration:
                                  InputDecoration.collapsed(hintText: ''),
                              hint: Text('Gender',
                                  style: TextStyle(
                                      color: Color(0xff8997a7), fontSize: 14)),
                              icon: Icon(
                                Icons.expand_more,
                                color: Colors.black45,
                                size: 22,
                              ),
                              value: gender,
                              onChanged: (String newValue) {
                                setState(() {
                                  gender = newValue;
                                });
                              },
                              items: <String>[
                                'Male',
                                'Female'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value,
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 14,
                                          letterSpacing: 0.25)),
                                );
                              }).toList(),
                            ),
                          );
                        },
                        // validator: (value) {
                        //       if (value.isEmpty) {
                        //         return 'Gender should filled';
                        //       }
                        //       return null;
                        //     },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                      child: FormField<String>(
                        builder: (FormFieldState<String> state) {
                          return InputDecorator(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                                errorStyle: TextStyle(
                                    color: Colors.redAccent, fontSize: 16.0),
                                filled: true,
                                fillColor: Color(0xffdcdfe3),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).errorColor)),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).errorColor)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff22c0e8))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)))),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButtonFormField<String>(
                                decoration:
                                    InputDecoration.collapsed(hintText: ''),
                                hint: Text('Status',
                                    style: TextStyle(
                                        color: Color(0xff8997a7),
                                        fontSize: 14)),
                                icon: Icon(
                                  Icons.expand_more,
                                  color: Colors.black45,
                                  size: 22,
                                ),
                                value: industry,
                                onChanged: (String newValue) {
                                  setState(() {
                                    industry = newValue;
                                  });
                                },
                                items: <String>[
                                  'Single',
                                  'Married'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value,
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 14,
                                            letterSpacing: 0.25)),
                                  );
                                }).toList(),
                              ),
                            ),
                          );
                        },
                        // validator: (value) {
                        //       if (value.isEmpty) {
                        //         return 'Industry should filled';
                        //       }
                        //       return null;
                        //     },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                      child: FormField<String>(
                        builder: (FormFieldState<String> state) {
                          return InputDecorator(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                                errorStyle: TextStyle(
                                    color: Colors.redAccent, fontSize: 16.0),
                                filled: true,
                                fillColor: Color(0xffdcdfe3),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).errorColor)),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).errorColor)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff22c0e8))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)))),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButtonFormField<String>(
                                decoration:
                                    InputDecoration.collapsed(hintText: ''),
                                hint: Text('Religion',
                                    style: TextStyle(
                                        color: Color(0xff8997a7),
                                        fontSize: 14)),
                                icon: Icon(
                                  Icons.expand_more,
                                  color: Colors.black45,
                                  size: 22,
                                ),
                                value: type,
                                onChanged: (String newValue) {
                                  setState(() {
                                    type = newValue;
                                  });
                                },
                                items: <String>[
                                  'Islam',
                                  'Christian',
                                  'Hindu',
                                  'Buddha',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value,
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 14,
                                            letterSpacing: 0.25)),
                                  );
                                }).toList(),
                              ),
                            ),
                          );
                        },
                        // validator: (value) {
                        //       if (value.isEmpty) {
                        //         return 'Type should filled';
                        //       }
                        //       return null;
                        //     },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 14,
                          letterSpacing: 0.25,
                        ),
                        decoration: InputDecoration(
                            labelText: "Date of Birth",
                            labelStyle: TextStyle(
                                color: Color(0xff8997a7), fontSize: 14),
                            filled: true,
                            fillColor: Color(0xffdcdfe3),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).errorColor)),
                            errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).errorColor)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff22c0e8))),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)))),
                        keyboardType: TextInputType.datetime,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please provide a value.';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 14,
                          letterSpacing: 0.25,
                        ),
                        decoration: InputDecoration(
                            labelText: "City",
                            labelStyle: TextStyle(
                                color: Color(0xff8997a7), fontSize: 14),
                            filled: true,
                            fillColor: Color(0xffdcdfe3),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).errorColor)),
                            errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).errorColor)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff22c0e8))),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)))),
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please provide a value.';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                      child: FormField<String>(
                        builder: (FormFieldState<String> state) {
                          return InputDecorator(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                                errorStyle: TextStyle(
                                    color: Colors.redAccent, fontSize: 16.0),
                                filled: true,
                                fillColor: Color(0xffdcdfe3),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).errorColor)),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).errorColor)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff22c0e8))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)))),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButtonFormField<String>(
                                decoration:
                                    InputDecoration.collapsed(hintText: ''),
                                hint: Text('Education Level',
                                    style: TextStyle(
                                        color: Color(0xff8997a7),
                                        fontSize: 14)),
                                icon: Icon(
                                  Icons.expand_more,
                                  color: Colors.black45,
                                  size: 22,
                                ),
                                value: education,
                                onChanged: (String newValue) {
                                  setState(() {
                                    education = newValue;
                                  });
                                },
                                items: <String>[
                                  'SD',
                                  'SMP',
                                  'SMA',
                                  'D3',
                                  'S1',
                                  'S2',
                                  'S3'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value,
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 14,
                                            letterSpacing: 0.25)),
                                  );
                                }).toList(),
                              ),
                            ),
                          );
                        },
                        // validator: (value) {
                        //       if (value.isEmpty) {
                        //         return 'Education Level should filled';
                        //       }
                        //       return null;
                        //     },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 14,
                          letterSpacing: 0.25,
                        ),
                        decoration: InputDecoration(
                            labelText: "Course",
                            labelStyle: TextStyle(
                                color: Color(0xff8997a7), fontSize: 14),
                            filled: true,
                            fillColor: Color(0xffdcdfe3),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).errorColor)),
                            errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).errorColor)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff22c0e8))),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)))),
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please provide a value.';
                          }
                          return null;
                        },
                      ),
                    ),
                     GestureDetector(
                       onTap: (){},
                       child: Container(
                                height: 55,
                                margin:
                              EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('Add Experience',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white)),
                                    Icon(MdiIcons.plusCircleOutline,
                                        color: Colors.white, size: 22)
                                  ],
                                ),
                              ),
                     ),
                    Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 55,
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Your Experience',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.white)),
                                  Icon(MdiIcons.minusCircleOutline,
                                      color: Colors.white, size: 22)
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  color: Color(0xffdcdfe3),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5))),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 8),
                                    child: TextFormField(
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 14,
                                        letterSpacing: 0.25,
                                      ),
                                      decoration: InputDecoration(
                                          labelText: "Company Name",
                                          labelStyle: TextStyle(
                                              color: Color(0xff8997a7),
                                              fontSize: 14),
                                          filled: true,
                                          fillColor: Colors.white,
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Theme.of(context)
                                                          .errorColor)),
                                          errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .errorColor)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xff22c0e8))),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)))),
                                      textInputAction: TextInputAction.next,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please provide a value.';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 8),
                                    child: TextFormField(
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 14,
                                        letterSpacing: 0.25,
                                      ),
                                      decoration: InputDecoration(
                                          labelText: "Position",
                                          labelStyle: TextStyle(
                                              color: Color(0xff8997a7),
                                              fontSize: 14),
                                          filled: true,
                                          fillColor: Colors.white,
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Theme.of(context)
                                                          .errorColor)),
                                          errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .errorColor)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xff22c0e8))),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)))),
                                      textInputAction: TextInputAction.next,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please provide a value.';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 10,
                                                  right: 10,
                                                  top: 5,
                                                  bottom: 10),
                                              child: TextField(
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xff8997a7)),
                                                decoration: InputDecoration(
                                                    labelText: "Start",
                                                    labelStyle: TextStyle(
                                                        color:
                                                            Color(0xff8997a7),
                                                        fontSize: 14),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    focusedErrorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Theme.of(context)
                                                                .errorColor)),
                                                    errorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Theme.of(context)
                                                                .errorColor)),
                                                    focusedBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xff22c0e8))),
                                                    enabledBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(color: Colors.transparent),
                                                        borderRadius: BorderRadius.all(Radius.circular(5)))),
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
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 10,
                                                  right: 10,
                                                  top: 5,
                                                  bottom: 10),
                                              child: TextField(
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xff8997a7)),
                                                decoration: InputDecoration(
                                                    labelText: "Till",
                                                    labelStyle: TextStyle(
                                                        color:
                                                            Color(0xff8997a7),
                                                        fontSize: 14),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    focusedErrorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Theme.of(context)
                                                                .errorColor)),
                                                    errorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Theme.of(context)
                                                                .errorColor)),
                                                    focusedBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xff22c0e8))),
                                                    enabledBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(color: Colors.transparent),
                                                        borderRadius: BorderRadius.all(Radius.circular(5)))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                        Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 55,
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Your Experience',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.white)),
                                  Icon(MdiIcons.minusCircleOutline,
                                      color: Colors.white, size: 22)
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  color: Color(0xffdcdfe3),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5))),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 8),
                                    child: TextFormField(
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 14,
                                        letterSpacing: 0.25,
                                      ),
                                      decoration: InputDecoration(
                                          labelText: "Company Name",
                                          labelStyle: TextStyle(
                                              color: Color(0xff8997a7),
                                              fontSize: 14),
                                          filled: true,
                                          fillColor: Colors.white,
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Theme.of(context)
                                                          .errorColor)),
                                          errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .errorColor)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xff22c0e8))),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)))),
                                      textInputAction: TextInputAction.next,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please provide a value.';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 8),
                                    child: TextFormField(
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 14,
                                        letterSpacing: 0.25,
                                      ),
                                      decoration: InputDecoration(
                                          labelText: "Position",
                                          labelStyle: TextStyle(
                                              color: Color(0xff8997a7),
                                              fontSize: 14),
                                          filled: true,
                                          fillColor: Colors.white,
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Theme.of(context)
                                                          .errorColor)),
                                          errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Theme.of(context)
                                                      .errorColor)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xff22c0e8))),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)))),
                                      textInputAction: TextInputAction.next,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please provide a value.';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 10,
                                                  right: 10,
                                                  top: 5,
                                                  bottom: 10),
                                              child: TextField(
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xff8997a7)),
                                                decoration: InputDecoration(
                                                    labelText: "Start",
                                                    labelStyle: TextStyle(
                                                        color:
                                                            Color(0xff8997a7),
                                                        fontSize: 14),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    focusedErrorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Theme.of(context)
                                                                .errorColor)),
                                                    errorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Theme.of(context)
                                                                .errorColor)),
                                                    focusedBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xff22c0e8))),
                                                    enabledBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(color: Colors.transparent),
                                                        borderRadius: BorderRadius.all(Radius.circular(5)))),
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
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 10,
                                                  right: 10,
                                                  top: 5,
                                                  bottom: 10),
                                              child: TextField(
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xff8997a7)),
                                                decoration: InputDecoration(
                                                    labelText: "Till",
                                                    labelStyle: TextStyle(
                                                        color:
                                                            Color(0xff8997a7),
                                                        fontSize: 14),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    focusedErrorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Theme.of(context)
                                                                .errorColor)),
                                                    errorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Theme.of(context)
                                                                .errorColor)),
                                                    focusedBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xff22c0e8))),
                                                    enabledBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(color: Colors.transparent),
                                                        borderRadius: BorderRadius.all(Radius.circular(5)))),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 15),
                              height: 55,
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5)
                                      ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                 Row(
                                      children: [
                                        Text('Add Attachment ',
                                          style: TextStyle(
                                              fontSize: 14, color: Colors.white)),
                                        Icon(
                                          MdiIcons.helpCircleOutline, 
                                          color: Colors.white, 
                                          size: 16, 
                                          ),
                                      ],
                                    ),
                                Icon(MdiIcons.plusCircleOutline,
                                      color: Colors.white, size: 22)
                                ],
                              ),
                            ),
                          ],
                        )),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                      child: Material(
                        elevation: 3.0,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color(0xff22c0e8),
                        child: MaterialButton(
                          onPressed: () {},
                          padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                          // onPressed: _saveForm,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Save',
                                  style: TextStyle(
                                    fontFamily: 'VarelaRound',
                                    color: Color(0xffffffff),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}