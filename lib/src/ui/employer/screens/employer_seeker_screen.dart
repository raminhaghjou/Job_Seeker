import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

class EmployerSeekerList extends StatefulWidget {
  _EmployerSeekerListState createState() => _EmployerSeekerListState();
}

final items = List<String>.generate(20, (i) => "Item ${i + 1}");

class _EmployerSeekerListState extends State<EmployerSeekerList> {
  @override
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Dismissible(
            // Specify the direction to swipe and delete
            direction: DismissDirection.endToStart,
            key: Key(item),
            onDismissed: (direction) {
              // Removes that item the list on swipwe
              setState(() {
                items.removeAt(index);
              });
              // Shows the information on Snackbar
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text("$item dismissed")));
            },
            background: Container(color: Theme.of(context).errorColor),
            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff0c0c0c0),
                      blurRadius: 1.5,
                      offset: Offset(1.0, 1.0))
                ],
              ),
              child: Stack(
                alignment: Alignment(1.06, -2),
                children: <Widget>[
                  ListTile(
                    leading: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/img_profil.png'),
                          backgroundColor: Colors.blue,
                          radius: 28,
                        ),
                      ],
                    ),
                    title: Container(
                      height: 60,
                      padding: (EdgeInsets.only(top: 5)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('James Cahyadi',
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff3b3b3b))),
                          Text('Male, 30 years old',
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff3b3b3b))),
                          Text('Education: High School',
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff3b3b3b))),
                        ],
                      ),
                    ),
                    subtitle: Container(
                      height: 30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "Exp: ",
                                style: TextStyle(
                                  fontFamily: 'VarelaRound',
                                  color: Color(0xff8997a7),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                )),
                            TextSpan(
                                text: '2 years as Barista',
                                style: TextStyle(
                                  fontFamily: 'VarelaRound',
                                  color: Color(0xff3b3b3b),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                )),
                          ])),
                          Row(
                            children: <Widget>[
                              Icon(FeatherIcons.mapPin,
                                  size: 10, color: Color(0xff8997a7)),
                              Text(' Pontianak, West Borneo',
                                  style: TextStyle(
                                      fontSize: 10, color: Color(0xff8997a7)))
                            ],
                          ),
                        ],
                      ),
                    ),
                    trailing: RaisedButton.icon(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        color: Color(0xff22c0e8),
                        onPressed: () {},
                        icon: Icon(FeatherIcons.messageCircle,
                            color: Colors.white),
                        label: Text('Chat',
                            style:
                                TextStyle(color: Colors.white, fontSize: 14))),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
