import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:space/src/ui/seeker/layout/job_search_result.dart';

class JobSearch extends StatefulWidget {
  @override
  _JobSearchState createState() => _JobSearchState();
}

class _JobSearchState extends State<JobSearch> {
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('SEARCH FOR A JOB',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff2c4057),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 50),
                    width: 100,
                    color: Color(0xff22c0e8),
                    child: Divider(
                      height: 2,
                    ),
                  ),
                  Container(
                    height: 180,
                    width: 280,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TextField(
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                          decoration: new InputDecoration(
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            hintText: "Keywords (e.g. Job Title...)",
                            hintStyle: TextStyle(fontSize: 12),
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
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                          decoration: new InputDecoration(
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            hintText: "Location (e.g. City, Zip...)",
                            hintStyle: TextStyle(fontSize: 12),
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
                                    color: Colors.redAccent, fontSize: 12.0),
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
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12,
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
                                    style: TextStyle(
                                        fontSize: 12,
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
                                    style: TextStyle(
                                        fontSize: 12,
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
                                    style: TextStyle(
                                        fontSize: 12,
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
                                    style: TextStyle(
                                        fontSize: 12,
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
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff8997a7))),
                        Text(' ${_sliderValue.toInt()}',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff22c0e8))),
                        Text(' km',
                            style: TextStyle(
                                fontSize: 12,
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
                    child: MaterialButton(
                      height: 45,
                      minWidth: 280,
                         elevation: 3.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      color: Color(0xff57b22f),
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new JobSearchResult()));
                        },
                        child: Text('Search for a job',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
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
