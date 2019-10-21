import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:space/src/core/models/job.dart';
import 'package:space/src/core/models/jobs.dart';

class EditPost extends StatefulWidget {
  static const routeName = '/edit-post';

  @override
  _EditPostState createState() => _EditPostState();
}

class _EditPostState extends State<EditPost> {
  final _locationFocusNode = FocusNode();
  final _descriptionFocusNode = FocusNode();
  final _workingdayFocusNode = FocusNode();
  final _workinghourFocusNode = FocusNode();
  final _skillFocusNode = FocusNode();
  final _salaryFocusNode = FocusNode();
  final _form = GlobalKey<FormState>();
  var _editJob = Job(
    id: null,
    title: '',
    salary: 0,
    description: '',
    type: '',
    workingday: '',
    workinghour: '',
    skill: '',
    education: '',
    industry: '',
    location: '',
    typeSalary: '',
    gender: '',
  );
  var _initValues = {
    'title': '',
    'salary': '',
    'description': '',
    'type': '',
    'workingday': '',
    'workinghour': '',
    'skill': '',
    'education': '',
    'industry': '',
    'location': '',
    'typeSalary': '',
    'gender': '',
  };
  // var _isInit = true;
  var _isLoading = false;

  // @override
  // void didChangeDependencies() {
  //   if (_isInit) {
  //     final jobId = ModalRoute.of(context).settings.arguments as String;
  //     if (jobId != null) {
  //       _editJob = Provider.of<Jobs>(context, listen: false).findById(jobId);
  //       _initValues = {
  //         'title': _editJob.title,
  //         'location': _editJob.location,
  //         'description': _editJob.description,
  //         'workingday': _editJob.workingday,
  //         'workinghour': _editJob.workinghour,
  //         'skill': _editJob.skill,
  //         'salary': _editJob.salary.toString(),
  //         'type': _editJob.type,
  //         'education': _editJob.education,
  //         'industry': _editJob.industry,
  //         'typeSalary': _editJob.typeSalary,
  //         'gender': _editJob.gender.toString(),
  //       };
  //     }
  //   }
  //   _isInit = false;
  //   super.didChangeDependencies();
  // }

  @override
  void dispose() {
    _locationFocusNode.dispose();
    _descriptionFocusNode.dispose();
    _workingdayFocusNode.dispose();
    _workinghourFocusNode.dispose();
    _skillFocusNode.dispose();
    _salaryFocusNode.dispose();
    super.dispose();
  }

  // Future<void> _saveForm() async {
  //   final isValid = _form.currentState.validate();
  //   if (!isValid) {
  //     return;
  //   }
  //   _form.currentState.save();
  //   setState(() {
  //     _isLoading = true;
  //   });
  //   if (_editJob.id != null) {
  //     await Provider.of<Jobs>(context, listen: false)
  //         .updateJob(_editJob.id, _editJob);
  //   } else {
  //     try {
  //       await Provider.of<Jobs>(context, listen: false).addJob(_editJob);
  //     } catch (error) {
  //       print(error);
  //     }
  //     {
  //       await showDialog(
  //         context: context,
  //         builder: (ctx) => AlertDialog(
  //           title: Text('An error occurred!'),
  //           content: Text('Something went wrong.'),
  //           actions: <Widget>[
  //             FlatButton(
  //               child: Text('Ok'),
  //               onPressed: () {
  //                 Navigator.of(ctx).pop();
  //               },
  //             )
  //           ],
  //         ),
  //       );
  //     }
      // finally {
      //   setState(() {
      //     _isLoading = false;
      //   });
      //   Navigator.of(context).pop();
      // }
    // }
    // setState(() {
    //   _isLoading = false;
    // });
    // Navigator.of(context).pop();
    // Navigator.of(context).pop();
  // }

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
              key: _form,
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 50,),
                child: Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text("Job Details",
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
                        initialValue: _initValues['title'],
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 14,
                          letterSpacing: 0.25,
                        ),
                        decoration: InputDecoration(
                            labelText: "Title",
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
                        onFieldSubmitted: (_) {
                          FocusScope.of(context)
                              .requestFocus(_locationFocusNode);
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please provide a value.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _editJob = Job(
                              title: value,
                              salary: _editJob.salary,
                              description: _editJob.description,
                              gender: _editJob.gender,
                              industry: _editJob.industry,
                              type: _editJob.type,
                              typeSalary: _editJob.typeSalary,
                              education: _editJob.education,
                              skill: _editJob.skill,
                              workinghour: _editJob.workinghour,
                              workingday: _editJob.workingday,
                              location: _editJob.location,
                              id: _editJob.id,
                              isSave: _editJob.isSave);
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                      child: TextFormField(
                        initialValue: _initValues['location'],
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 14,
                          letterSpacing: 0.25,
                        ),
                        decoration: InputDecoration(
                            labelText: "Location",
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
                        focusNode: _locationFocusNode,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context)
                              .requestFocus(_descriptionFocusNode);
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please provide a value.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _editJob = Job(
                              title: _editJob.title,
                              salary: _editJob.salary,
                              description: _editJob.description,
                              gender: _editJob.gender,
                              industry: _editJob.industry,
                              type: _editJob.type,
                              typeSalary: _editJob.typeSalary,
                              education: _editJob.education,
                              skill: _editJob.skill,
                              workinghour: _editJob.workinghour,
                              workingday: _editJob.workingday,
                              location: value,
                              id: _editJob.id,
                              isSave: _editJob.isSave);
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                      child: TextFormField(
                        initialValue: _initValues['description'],
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 14,
                          letterSpacing: 0.25,
                        ),
                        decoration: InputDecoration(
                            labelText: "Description",
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
                        maxLines: 3,
                        keyboardType: TextInputType.multiline,
                        focusNode: _descriptionFocusNode,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter a description.';
                          }
                          if (value.length < 10) {
                            return 'Should be at least 10 characters long.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _editJob = Job(
                              title: _editJob.title,
                              salary: _editJob.salary,
                              description: value,
                              gender: _editJob.gender,
                              industry: _editJob.industry,
                              type: _editJob.type,
                              typeSalary: _editJob.typeSalary,
                              education: _editJob.education,
                              skill: _editJob.skill,
                              workinghour: _editJob.workinghour,
                              workingday: _editJob.workingday,
                              location: _editJob.location,
                              id: _editJob.id,
                              isSave: _editJob.isSave);
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                      child: FormField<String>(
                        initialValue: _initValues['gender'],
                        onSaved: (value) {
                          _editJob = Job(
                            title: _editJob.title,
                            id: _editJob.id,
                            isSave: _editJob.isSave,
                            salary: _editJob.salary,
                            gender: value,
                            typeSalary: _editJob.typeSalary,
                            type: _editJob.type,
                            workinghour: _editJob.workinghour,
                            workingday: _editJob.workingday,
                            location: _editJob.location,
                            industry: _editJob.industry,
                            education: _editJob.education,
                            skill: _editJob.skill,
                            description: _editJob.description,
                          );
                        },
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
                              onSaved: (value) {
                                _editJob = Job(
                                  title: _editJob.title,
                                  id: _editJob.id,
                                  isSave: _editJob.isSave,
                                  salary: _editJob.salary,
                                  gender: value,
                                  typeSalary: _editJob.typeSalary,
                                  type: _editJob.type,
                                  workinghour: _editJob.workinghour,
                                  workingday: _editJob.workingday,
                                  location: _editJob.location,
                                  industry: _editJob.industry,
                                  education: _editJob.education,
                                  skill: _editJob.skill,
                                  description: _editJob.description,
                                );
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
                        initialValue: _initValues['industry'],
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
                                hint: Text('Industry',
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
                                onSaved: (value) {
                                  _editJob = Job(
                                    title: _editJob.title,
                                    id: _editJob.id,
                                    isSave: _editJob.isSave,
                                    salary: _editJob.salary,
                                    type: _editJob.type,
                                    typeSalary: _editJob.typeSalary,
                                    gender: _editJob.gender,
                                    workinghour: _editJob.workinghour,
                                    workingday: _editJob.workingday,
                                    location: _editJob.location,
                                    industry: value,
                                    education: _editJob.education,
                                    skill: _editJob.skill,
                                    description: _editJob.description,
                                  );
                                },
                                items: <String>[
                                  'Resturants',
                                  'Hotels'
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
                        initialValue: _initValues['type'],
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
                                hint: Text('Type',
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
                                onSaved: (value) {
                                  _editJob = Job(
                                      title: _editJob.title,
                                      id: _editJob.id,
                                      isSave: _editJob.isSave,
                                      salary: _editJob.salary,
                                      type: value,
                                      typeSalary: _editJob.typeSalary,
                                      gender: _editJob.gender,
                                      workinghour: _editJob.workinghour,
                                      workingday: _editJob.workingday,
                                      location: _editJob.location,
                                      industry: _editJob.industry,
                                      education: _editJob.education,
                                      skill: _editJob.skill,
                                      description: _editJob.description);
                                },
                                items: <String>[
                                  'Full Time',
                                  'Part Time',
                                  'Freelance',
                                  'Weekend'
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
                      child: FormField<String>(
                        initialValue: _initValues['typeSalary'],

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
                                hint: Text('Type Salary',
                                    style: TextStyle(
                                        color: Color(0xff8997a7),
                                        fontSize: 14)),
                                icon: Icon(
                                  Icons.expand_more,
                                  color: Colors.black45,
                                  size: 22,
                                ),
                                value: typeSalary,
                                onChanged: (String newValue) {
                                  setState(() {
                                    typeSalary = newValue;
                                  });
                                },
                                onSaved: (value) {
                                  _editJob = Job(
                                      title: _editJob.title,
                                      id: _editJob.id,
                                      isSave: _editJob.isSave,
                                      salary: _editJob.salary,
                                      type: _editJob.type,
                                      typeSalary: value,
                                      gender: _editJob.gender,
                                      workinghour: _editJob.workinghour,
                                      workingday: _editJob.workingday,
                                      location: _editJob.location,
                                      industry: _editJob.industry,
                                      education: _editJob.education,
                                      skill: _editJob.skill,
                                      description: _editJob.description);
                                },
                                items: <String>[
                                  'Per Hour',
                                  'Per Day',
                                  'Per Month'
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
                        //         return 'Type Salary should filled';
                        //       }
                        //       return null;
                        //     },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                      child: FormField<String>(
                        initialValue: _initValues['education'],

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
                                onSaved: (value) {
                                  _editJob = Job(
                                    title: _editJob.title,
                                    id: _editJob.id,
                                    isSave: _editJob.isSave,
                                    salary: _editJob.salary,
                                    type: _editJob.type,
                                    typeSalary: _editJob.typeSalary,
                                    gender: _editJob.gender,
                                    workinghour: _editJob.workinghour,
                                    workingday: _editJob.workingday,
                                    location: _editJob.location,
                                    industry: _editJob.industry,
                                    education: value,
                                    skill: _editJob.skill,
                                    description: _editJob.description,
                                  );
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
                        initialValue: _initValues['workingday'],
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 14,
                          letterSpacing: 0.25,
                        ),
                        decoration: InputDecoration(
                            labelText: "Working Day",
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
                        focusNode: _workingdayFocusNode,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context)
                              .requestFocus(_workinghourFocusNode);
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please provide a value.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _editJob = Job(
                              title: _editJob.title,
                              salary: _editJob.salary,
                              description: _editJob.description,
                              gender: _editJob.gender,
                              industry: _editJob.industry,
                              type: _editJob.type,
                              typeSalary: _editJob.typeSalary,
                              education: _editJob.education,
                              skill: _editJob.skill,
                              workinghour: _editJob.workinghour,
                              workingday: value,
                              location: _editJob.location,
                              id: _editJob.id,
                              isSave: _editJob.isSave);
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                      child: TextFormField(
                        initialValue: _initValues['workinghour'],
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 14,
                          letterSpacing: 0.25,
                        ),
                        decoration: InputDecoration(
                            labelText: "Working Hour",
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
                        focusNode: _workinghourFocusNode,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_skillFocusNode);
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please provide a value.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _editJob = Job(
                              title: _editJob.title,
                              salary: _editJob.salary,
                              description: _editJob.description,
                              gender: _editJob.gender,
                              industry: _editJob.industry,
                              type: _editJob.type,
                              typeSalary: _editJob.typeSalary,
                              education: _editJob.education,
                              skill: _editJob.skill,
                              workinghour: value,
                              workingday: _editJob.workingday,
                              location: _editJob.location,
                              id: _editJob.id,
                              isSave: _editJob.isSave);
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                      child: TextFormField(
                        initialValue: _initValues['skill'],
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 14,
                          letterSpacing: 0.25,
                        ),
                        decoration: InputDecoration(
                            labelText: "Skill",
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
                        focusNode: _skillFocusNode,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_salaryFocusNode);
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please provide a value.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _editJob = Job(
                              title: _editJob.title,
                              salary: _editJob.salary,
                              description: _editJob.description,
                              gender: _editJob.gender,
                              industry: _editJob.industry,
                              type: _editJob.type,
                              typeSalary: _editJob.typeSalary,
                              education: _editJob.education,
                              skill: value,
                              workinghour: _editJob.workinghour,
                              workingday: _editJob.workingday,
                              location: _editJob.location,
                              id: _editJob.id,
                              isSave: _editJob.isSave);
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                      child: TextFormField(
                        initialValue: _initValues['salary'],
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 14,
                          letterSpacing: 0.25,
                        ),
                        decoration: InputDecoration(
                            labelText: "Salary",
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
                        keyboardType: TextInputType.number,
                        focusNode: _salaryFocusNode,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context)
                              .requestFocus(_descriptionFocusNode);
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter a salary.';
                          }
                          if (double.tryParse(value) == null) {
                            return 'Please enter a valid number.';
                          }
                          if (double.parse(value) <= 0) {
                            return 'Please enter a number greater than zero.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _editJob = Job(
                              title: _editJob.title,
                              salary: double.parse(value),
                              description: _editJob.description,
                              gender: _editJob.gender,
                              industry: _editJob.industry,
                              type: _editJob.type,
                              typeSalary: _editJob.typeSalary,
                              education: _editJob.education,
                              skill: _editJob.skill,
                              workinghour: _editJob.workinghour,
                              workingday: _editJob.workingday,
                              location: _editJob.location,
                              id: _editJob.id,
                              isSave: _editJob.isSave);
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                      child: Material(
                        elevation: 3.0,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color(0xff22c0e8),
                        child: MaterialButton(
                          onPressed: (){},
                          padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                          // onPressed: _saveForm,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Post',
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
