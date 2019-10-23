import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:space/src/ui/components/otp_seeker.dart';

enum AuthMode { Signup, Login }

class LoginSignUpSeeker extends StatelessWidget {
  static const routeName = '/auth-seeker';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SvgPicture.asset(
          'assets/vector-5.svg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset('assets/logo.png'),
                  height: 130,
                ),
              ),
              Flexible(
                child: AuthCard(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AuthCard extends StatefulWidget {
  const AuthCard({
    Key key,
  }) : super(key: key);

  @override
  _AuthCardState createState() => _AuthCardState();
}

class _AuthCardState extends State<AuthCard> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  AuthMode _authMode = AuthMode.Login;
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
            child: Text('Okay'),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          )
        ],
      ),
    );
  }

  // Future<void> _submit() async {
  //   if (!_formKey.currentState.validate()) {
  //     // Invalid!
  //     return;
  //   }
  //   _formKey.currentState.save();
  //   setState(() {
  //     _isLoading = true;
  //   });
  //   try {
  //     if (_authMode == AuthMode.Login) {
  //       // Log user in
  //       await Provider.of<Auth>(context, listen: false).login(
  //         _authData['email'],
  //         _authData['password'],
  //       );
  //     } else {
  //       // Sign user up
  //       await Provider.of<Auth>(context, listen: false).signup(
  //         _authData['email'],
  //         _authData['password'],
  //       );
  //     }
  //   } on HttpException catch (error) {
  //     var errorMessage = 'Authentication failed';
  //     if (error.toString().contains('EMAIL_EXISTS')) {
  //       errorMessage = 'This email address is already in use.';
  //     } else if (error.toString().contains('INVALID_EMAIL')) {
  //       errorMessage = 'This is not a valid email address';
  //     } else if (error.toString().contains('WEAK_PASSWORD')) {
  //       errorMessage = 'This password is too weak.';
  //     } else if (error.toString().contains('EMAIL_NOT_FOUND')) {
  //       errorMessage = 'Could not find a user with that email.';
  //     } else if (error.toString().contains('INVALID_PASSWORD')) {
  //       errorMessage = 'Invalid password.';
  //     }
  //     _showErrorDialog(errorMessage);
  //   } catch (error) {
  //     const errorMessage =
  //         'Could not authenticate you. Please try again later.';
  //     _showErrorDialog(errorMessage);
  //   }

  //   setState(() {
  //     _isLoading = false;
  //   });
  // }

  void _switchAuthMode() {
    if (_authMode == AuthMode.Login) {
      setState(() {
        _authMode = AuthMode.Signup;
      });
    } else {
      setState(() {
        _authMode = AuthMode.Login;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                    (_authMode == AuthMode.Login
                        ? 'LOGIN AN ACCOUNT'
                        : 'SIGN UP AN ACCOUNT'),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white, fontSize: 14)),
              ],
            ),
            Row(children: <Widget>[
              Expanded(
                child: Container(
                    margin: EdgeInsets.only(left: 120, right: 120),
                    child: Divider(
                        thickness: 2, color: Color(0xff22c0e8), height: 30)),
              )
            ]),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  errorStyle: TextStyle(color: Theme.of(context).errorColor),
                  hintText: 'E-mail',
                  hintStyle: TextStyle(color: Color(0xff8997a7), fontSize: 14),
                  filled: true,
                  fillColor: Color(0xffdcdfe3),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).errorColor),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).errorColor),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff22c0e8)),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value.isEmpty || !value.contains('@')) {
                    return 'Invalid email!';
                  }
                },
                onSaved: (value) {
                  _authData['email'] = value;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  errorStyle: TextStyle(color: Theme.of(context).errorColor),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Color(0xff8997a7), fontSize: 14),
                  filled: true,
                  fillColor: Color(0xffdcdfe3),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).errorColor),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).errorColor),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff22c0e8)),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                ),
                obscureText: true,
                controller: _passwordController,
                validator: (value) {
                  if (value.isEmpty || value.length < 5) {
                    return 'Password is too short!';
                  }
                },
                onSaved: (value) {
                  _authData['password'] = value;
                },
              ),
            ),
            if (_authMode == AuthMode.Signup)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                child: TextFormField(
                  enabled: _authMode == AuthMode.Signup,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    errorStyle: TextStyle(color: Theme.of(context).errorColor),
                    hintText: 'Confirm Password',
                    hintStyle:
                        TextStyle(color: Color(0xff8997a7), fontSize: 14),
                    filled: true,
                    fillColor: Color(0xffdcdfe3),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).errorColor),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    errorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).errorColor),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff22c0e8)),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                  obscureText: true,
                  validator: _authMode == AuthMode.Signup
                      ? (value) {
                          if (value != _passwordController.text) {
                            return 'Passwords do not match!';
                          }
                        }
                      : null,
                ),
              ),
            SizedBox(
              height: 20,
            ),
            if (_isLoading)
              CircularProgressIndicator(
                backgroundColor: Color(0xff22c0e8),
              )
            else
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 160,
                    child:
                        Text(_authMode == AuthMode.Login ? 'Login' : 'Sign Up'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OTPSeeker()));
                    },
                    // _submit,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                    color: (_authMode == AuthMode.Login
                        ? Color(0xff57b22f)
                        : Color(0xff22c0e8)),
                    textColor: Colors.white,
                  ),
                  SizedBox(width: 10),
                  MaterialButton(
                    minWidth: 160,
                    child: Text(
                        '${_authMode == AuthMode.Login ? 'Sign up' : 'Login'} an account'),
                    onPressed: _switchAuthMode,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 4),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    color: (_authMode == AuthMode.Login
                        ? Color(0xff22c0e8)
                        : Color(0xff57b22f)),
                    textColor: Colors.white,
                  ),
                ],
              ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 10),
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text('OR',
                    style: TextStyle(fontSize: 11, color: Colors.white70)),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 20, left: 10),
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Color(0xff2d67a5),
                  minWidth: 160,
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Icon(MdiIcons.facebook, size: 20, color: Colors.white),
                      Text("Login with Facebook",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 11)),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.white,
                  minWidth: 160,
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Image.asset('assets/gmail.png', height: 12),
                      Text("  Login with Gmail",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff8997a7), fontSize: 11)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 70)
          ],
        ),
      ),
    );
  }
}
