import 'package:flutter/material.dart';


class RegisterEmployer extends StatefulWidget {
  
  static const routeName = 'register_employer';

  @override
  _RegisterEmployerState createState() => _RegisterEmployerState();
}

class _RegisterEmployerState extends State<RegisterEmployer> {
TextStyle style = TextStyle(fontFamily: 'VarelaRound');

  String dropdownValue = 'Seeker';

  @override
  Widget build(BuildContext context) {

    final textBody =
    Column(children: <Widget>[
      Column(children: <Widget>[
          Text("REGISTER AN ACCOUNT",
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
              margin: const EdgeInsets.only(left: 70.0, right: 70.0),
              child: Divider(
                  thickness: 2,
                  color: Color(0xff22c0e8),
                  height: 30)),
        )
      ]
      )
    ]
    );


    final usernameField = new TextFormField(
      style: style.copyWith(
      color: Colors.black45,
      fontSize: 12,
      letterSpacing: 0.25,
      ),
        decoration: new InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
            hintText: "Choose a Username",
            hintStyle: style.copyWith(color: Color(0xff8997a7)),
            filled: true,
            fillColor: Color(0xffdcdfe3),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff22c0e8), width: 1),
              borderRadius: BorderRadius.circular(30.0)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(color: Colors.transparent, width: 1),
              )),                                           
           validator: (value) => value.isEmpty ? 'Column can\'t be empty' : null
    );

    final emailField = TextFormField(
      style: style.copyWith(
      color: Colors.black45,
      fontSize: 12,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.25,
      ),
        decoration: new InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
            hintText: "Enter Your Email Address",
            hintStyle: style.copyWith(color: Color(0xff8997a7)),
            filled: true,
            fillColor: Color(0xffdcdfe3),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff22c0e8), width: 1),
              borderRadius: BorderRadius.circular(30.0)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(color: Colors.transparent, width: 1),
              )),          
        validator: (value) => value.isEmpty ? 'Column can\'t be empty' : null
    );

    final passwordField = new TextFormField(
        obscureText: true,
        style: style.copyWith(

        color: Colors.black45,
        fontSize: 12,
        letterSpacing: 0.25,
        ),
        decoration: new InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
            hintText: "Password",
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
        validator: (value) => value.isEmpty ? 'Column can\'t be empty' : null
    );

    final confirmPassword = new TextFormField(
      obscureText: true,
      style: style.copyWith(
      color: Colors.black45,
      fontSize: 12,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.25,
      ),
        decoration: new InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
            hintText: "Confirm Password",
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
        validator: (value) => value.isEmpty ? 'Column can\'t be empty' : null
    );

    final selectField = FormField<String>(
          builder: (FormFieldState<String> state) {
            return InputDecorator(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                  errorStyle: style.copyWith(color: Colors.redAccent, fontSize: 12),
                  hintStyle: style.copyWith(color: Color(0xff8997a7)),
                  filled: true,
                  fillColor: Color(0xffdcdfe3),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff22c0e8), width: 1),
                    borderRadius: BorderRadius.circular(30.0)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(color: Colors.transparent, width: 1),
                    )),          
              child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
          value: dropdownValue,
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          icon: Icon(Icons.expand_more, color: Colors.blueGrey, size: 18,),
          items: <String>['Seeker', 'Employer']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value, style: style.copyWith(
              color: Color(0xff8997a7),
              fontSize: 12,
              letterSpacing: 0.25,           
              )),
            );
          }).toList(),
        ),
      ),
    );
    }
  );

    final regButton = Material(
      elevation: 3.0,
      borderRadius: BorderRadius.all(Radius.circular(50)),
      color: Color(0xff22c0e8),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
  // showDialog(
  // context: context,builder: (_) => FlareGiffyDialog(
  //   flarePath: 'assets/space_demo.flr',
  //   flareAnimation: 'loading',
  //   title: Text('Sedang Loading',
  //          style: style.copyWith(
  //          fontSize: 22.0, fontWeight: FontWeight.w500),
  //   ),
  //   description: Text('Silahkan tunggu...',
  //         textAlign: TextAlign.center,
  //         style: style.copyWith(),
  //       ),
  //   onOkButtonPressed: () {},
  // ) ); 
  },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text('Register Now',
                textAlign: TextAlign.center,
                style: style.copyWith(
        
                color: Color(0xffffffff),
                fontSize: 14,
                fontWeight: FontWeight.w500,
                )
              ),
            Icon(Icons.arrow_forward, color: Colors.white, size: 18,),
          ],
        ),
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
              padding: EdgeInsets.only(left: 60, right: 60, bottom: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      textBody,
                      SizedBox(
                        height: 10.0,
                      ),
                      usernameField,  
                      SizedBox(
                          height: 25.0),
                      emailField,
                      SizedBox(
                          height: 25.0),
                      passwordField,
                      SizedBox(
                          height: 25.0),
                      confirmPassword,
                      SizedBox(
                        height: 25.0,
                      ),
                     selectField,
                      SizedBox(
                          height: 25.0),
                      regButton,
                      SizedBox(
                        height: 15.0,
                      ),
                      Text("LOGIN TO YOUR EXISTING ACCOUNT",
                          style: style.copyWith(
                            color: Color(0xff8997a7),
                            fontSize: 9,
                    
                            fontStyle: FontStyle.normal,
                            letterSpacing: 0.55,
                          )
                         ),
                    ],
                  
                ),
              ),
            ),
        ),
      );
    }
      );
    }
  }
