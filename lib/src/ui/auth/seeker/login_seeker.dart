import 'package:flutter/material.dart';

import 'package:space/src/ui/auth/seeker/ui_get_started_seeker.dart';


class LoginSeeker extends StatefulWidget {

  static const routeName = 'login_seeker';

  @override
  _LoginSeekerState createState() => _LoginSeekerState();
}

class _LoginSeekerState extends State<LoginSeeker> {
  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);
  final GlobalKey<FormState> _formKey = GlobalKey();
  Map<String, String> _authData = {
    'email': '',
    'password': '',
  };
  var _isLoading = false;
  final _passwordController = TextEditingController();

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
            title: Text('An Error Occurred!'),
            content: Text(message),
            actions: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
              )
            ],
          ),
    );
  }

  Future<void> _submit() async {
    if (!_formKey.currentState.validate()) {
      // Invalid!
      return;
    }
    _formKey.currentState.save();
    setState(() {
      _isLoading = true;
    });

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textBody =
    Column(children: <Widget>[
      Column(
        children: <Widget>[
          Text('LOGIN TO YOUR ACCOUNT',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: style.copyWith(
                  color: Color(0xff2c4057), fontSize: 12)
          ),
        ],
      ),
      Row(children: <Widget>[
        Expanded(
          child: new Container(
              margin: const EdgeInsets.symmetric(horizontal: 70),
              child: Divider(
                  thickness: 2,
                  color: Color(0xff22c0e8),
                  height: 30)),
        )
      ]
      )
    ]
    );


    final emailField = new TextFormField(
        style: style.copyWith(
        color: Colors.black45,
        fontSize: 12,
        fontStyle: FontStyle.normal,
        letterSpacing: 0.25,
        ),
        decoration: new InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
            hintText: 'Email Address',
            hintStyle: style.copyWith(color: Color(0xff8997a7), fontSize: 12),
            filled: true,
            fillColor: Color(0xffdcdfe3),
            focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff22c0e8), width: 1),
                    borderRadius: BorderRadius.circular(30.0)),
                    enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.transparent, width: 1),
                    )),    
            keyboardType: TextInputType.emailAddress,     
            validator: (value) {
              if (value.isEmpty || !value.contains('@')) {
                return 'Invalid email!';
              }
            },
            onSaved: (value) {
              _authData['email'] = value;
            },
    );
    final passwordField = TextFormField(
        obscureText: true,
        controller: _passwordController,
        style: style.copyWith(
        color: Colors.black45,
        fontSize: 12,
        fontStyle: FontStyle.normal,
        letterSpacing: 0.25,
        ),
        decoration: new InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
            hintText: 'Password',
            hintStyle: style.copyWith(color: Color(0xff8997a7), fontSize: 12),
            filled: true,
            fillColor: Color(0xffdcdfe3),
            focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff22c0e8), width: 1),
                    borderRadius: BorderRadius.circular(30.0)),
                    enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.transparent, width: 1),
                    )),          
            validator: (value) {
              if (value.isEmpty || value.length < 5) {
                return 'Password is too short!';
               }
            },
            onSaved: (value) {
              _authData['password'] = value;
            },
    );

    final loginButton = Material(
      elevation: 3.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff57b22f),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(60.0, 15.0, 20.0, 15.0),
        onPressed: () {  Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => UiGetStartedSeeker())); 
        },
        child: Row(
          children: <Widget>[
            Text('Login Now',
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontSize: 14)),
            const Expanded(
                child: Icon(Icons.arrow_forward, color: Colors.white, size: 18,)),
          ],
        ),
      ),
    );

    final linkForgot = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MaterialButton(
          padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
          onPressed: _submit,
          child: Text('FORGOT PASSWORD?',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: style.copyWith(
                  color: Colors.cyan[400], fontSize: 9))),
          Text('|', style: style.copyWith(fontSize: 8, color: Colors.blueGrey)),
          MaterialButton(
          padding: EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 5.0),
          onPressed: ()  {Navigator.pushNamed(context, 'space/register_account');},
          child: Text('REGISTER AN ACCOUNT',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: style.copyWith(
                  color: Colors.blueGrey, fontSize: 9))),
        ],
      ),
    );

  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return Scaffold(
        body: SingleChildScrollView(
          child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: viewportConstraints.maxHeight,
            ),
              child: Container(
              padding: EdgeInsets.only(left: 60, right: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      textBody,
                      SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(height: 50.0),
                      emailField,
                      SizedBox(height: 20.0),
                      passwordField,
                      SizedBox(
                        height: 30.0,
                      ),
                      loginButton,
                      SizedBox(
                        height: 5.0,
                      ),
                      linkForgot,
                      SizedBox(
                        height: 80.0,
                      ),
                      
                    Column (
                    children: <Widget>[
                    Text('Copyright © 2019 by Dreamjob',
                        textAlign: TextAlign.center,
                        style: style.copyWith(
                            color: Colors.blueGrey, fontSize: 10)
                    ),
                    Text('www.dreamjob.com',
                      textAlign: TextAlign.center,
                      style: style.copyWith(
                          color: Colors.cyan[400], fontSize: 10)),
                    ],
                    ),
                    SizedBox(
                        height: 5
                      ),
                    ],
                  ),),
           ),
          ),
  );
          }

);
    }
  }

