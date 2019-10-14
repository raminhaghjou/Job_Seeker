import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:space/src/ui/seeker/layout/job_search_result.dart';

class JobSearch extends StatefulWidget {
  @override
  _JobSearchState createState() => _JobSearchState();
}

class _JobSearchState extends State<JobSearch> {
  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);
  String dropdownValue = 'Rp.0 - Rp.1.000.000';
  double _sliderValue = 20.0;
  bool fulltime = false;
  bool weekend = false;
  bool freelance = false;
  bool parttime = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Container(
              padding: EdgeInsets.only(top: 50),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('SEARCH FOR A JOB',
                      textAlign: TextAlign.center,
                      style: style.copyWith(
                        color: Color(0xff2c4057),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 1,
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 20),
                    width: 100,
                    color: Color(0xff22c0e8),
                    child: Divider(
                      height: 2,
                    ),
                  ),
                  Container(
                    height: 180,
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TextField(
                          style: style.copyWith(
                              fontSize: 16, color: Colors.black54),
                          decoration: new InputDecoration(
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            hintText: "Keywords (e.g. Job Title...)",
                            hintStyle: style.copyWith(fontSize: 16),
                            filled: true,
                            fillColor: Color(0xffdcdfe3),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 2)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff22c0e8), width: 2),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                        TextField(
                          style: style.copyWith(
                              fontSize: 16, color: Colors.black54),
                          decoration: new InputDecoration(
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            hintText: "Location (e.g. City, Zip...)",
                            hintStyle: style.copyWith(fontSize: 15),
                            filled: true,
                            fillColor: Color(0xffdcdfe3),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 2)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff22c0e8), width: 2),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                        FormField<String>(
                            builder: (FormFieldState<String> state) {
                          return InputDecorator(
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(30.0, 0.0, 25.0, 0.0),
                                errorStyle: TextStyle(
                                    color: Colors.redAccent, fontSize: 16.0),
                                filled: true,
                                fillColor: Color(0xffdcdfe3),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide(
                                        color: Colors.transparent, width: 2))),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                icon: Icon(
                                  FeatherIcons.chevronDown,
                                  size: 20,
                                ),
                                items: <String>[
                                  'Rp.0 - Rp.1.000.000',
                                  'Rp.1.000.000 - Rp.2.500.000',
                                  'Rp.2.500.000 - Rp.4.500.000',
                                  'Rp.4.500.000 -Rp.6.500.000',
                                  'Rp.6.500.000 - Rp.10.000.000',
                                  'Rp.10.000.000 - Above'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value,
                                        style: style.copyWith(
                                          color: Colors.black54,
                                          fontSize: 14,
                                          fontStyle: FontStyle.normal,
                                          letterSpacing: 0.25,
                                        )),
                                  );
                                }).toList(),
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Checkbox(
                                  activeColor: Color(0xff22c0e8),
                                  value: fulltime,
                                  onChanged: (bool value) {
                                    setState(() {
                                      fulltime = value;
                                    });
                                  },
                                ),
                                Text('Fulltime',
                                    style: style.copyWith(
                                        fontSize: 14,
                                        color: Color(0xff8997a7))),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Checkbox(
                                  activeColor: Color(0xff22c0e8),
                                  value: parttime,
                                  onChanged: (bool value) {
                                    setState(() {
                                      parttime = value;
                                    });
                                  },
                                ),
                                Text('Partime',
                                    style: style.copyWith(
                                        fontSize: 14,
                                        color: Color(0xff8997a7))),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Checkbox(
                                  activeColor: Color(0xff22c0e8),
                                  value: weekend,
                                  onChanged: (bool value) {
                                    setState(() {
                                      weekend = value;
                                    });
                                  },
                                ),
                                Text('Weekend',
                                    style: style.copyWith(
                                        fontSize: 14,
                                        color: Color(0xff8997a7))),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Checkbox(
                                  activeColor: Color(0xff22c0e8),
                                  value: freelance,
                                  onChanged: (bool value) {
                                    setState(() {
                                      freelance = value;
                                    });
                                  },
                                ),
                                Text('Freelance',
                                    style: style.copyWith(
                                        fontSize: 14,
                                        color: Color(0xff8997a7))),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 70, right: 70),
                    child: Row(
                      children: <Widget>[
                        Text('Distance',
                            style: style.copyWith(
                                fontSize: 14, color: Color(0xff8997a7))),
                        Text(' ${_sliderValue.toInt()}',
                            style: style.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff22c0e8))),
                        Text(' km',
                            style: style.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff22c0e8))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50, right: 50, bottom: 10),
                    child: Slider(
                      activeColor: Color(0xff22c0e8),
                      min: 0.0,
                      max: 50.0,
                      onChanged: (newRating) {
                        setState(() => _sliderValue = newRating);
                      },
                      value: _sliderValue,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.circular(30.0),
                      color: Color(0xff57b22f),
                      child: MaterialButton(
                        padding: EdgeInsets.fromLTRB(60.0, 15.0, 20.0, 15.0),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new JobSearchResult()));
                        },
                        child: Row(
                          children: <Widget>[
                            Text('Search for a job',
                                textAlign: TextAlign.center,
                                style: style.copyWith(color: Colors.white)),
                            const Expanded(
                                child: Icon(Icons.arrow_forward,
                                    color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
