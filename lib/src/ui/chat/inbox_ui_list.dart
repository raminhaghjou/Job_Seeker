import 'package:flutter/material.dart';


class InboxUiList extends StatefulWidget {
  
  @override
  _InboxUiListState createState() => _InboxUiListState();
}

class _InboxUiListState extends State<InboxUiList> with SingleTickerProviderStateMixin {

  
  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
    body: Container(
      padding: EdgeInsets.only(top: 50, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
      Text('Inbox', style: style.copyWith(fontSize: 32, fontWeight: FontWeight.w600, color: Color(0xff3b3b3b))),

      SingleChildScrollView( 
      child:Container(
        child: Column(children: <Widget>[

          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Stack(
              alignment: Alignment(1, -1),
              children:[ 
                CircleAvatar(
            backgroundColor: Color(0xff757575),
            radius: 20.0,
            child: Image.asset('assets/img_profile-1.png', scale: 3.3,),
            ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Icon(Icons.brightness_1, size: 10, color: Color(0xff81c784)),
              ),
              
            ],
            ),
            title: Text('Mekuru Ramen', style: style.copyWith(fontSize: 16, color: Color(0xff757575))),
            subtitle: Text('Hello, New job offers for you', style: style.copyWith(fontSize: 14, color: Color(0xff757575))),
            trailing: Text('03:57 AM', style: style.copyWith(fontSize: 12, color: Color(0xff757575))),
         ),

         Container(
              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Divider(
                color: Color(0xffc9c8c8)
              ),
            ),

          ListTile(
            leading: Stack(
              alignment: Alignment(1, -1),
              children:[ 
                CircleAvatar(
            backgroundColor: Color(0xff757575),
            radius: 20.0,
            child: Image.asset('assets/img_profile-1.png', scale: 3.3,),
            ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Icon(Icons.brightness_1, size: 10, color: Color(0xfffca467)),
              ),
              
            ],
            ),
            title: Text('Diamonds Group', style: style.copyWith(fontSize: 16, color: Color(0xff757575))),
            subtitle: Text('Hello, New job offers for you', style: style.copyWith(fontSize: 14, color: Color(0xff757575))),
            trailing: Text('03:57 AM', style: style.copyWith(fontSize: 12, color: Color(0xff757575))),
         ),

           Container(
              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Divider(
                color: Color(0xffc9c8c8)
              ),
            ),

          ListTile(
            leading: Stack(
              alignment: Alignment(1, -1),
              children:[ 
                CircleAvatar(
            backgroundColor: Color(0xff757575),
            radius: 20.0,
            child: Image.asset('assets/img_profile-1.png', scale: 3.3,),
            ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Icon(Icons.brightness_1, size: 10, color: Color(0xfffc6767)),
              ),
              
            ],
            ),
            title: Text('Pull n Beat', style: style.copyWith(fontSize: 16, color: Color(0xff757575))),
            subtitle: Text('Hello, New job offers for you', style: style.copyWith(fontSize: 14, color: Color(0xff757575))),
            trailing: Text('03:57 AM', style: style.copyWith(fontSize: 12, color: Color(0xff757575))),
         ),
          Container(
              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: Divider(
                color: Color(0xffc9c8c8)
              ),
            ),
         ],
         ),
            ),
          ),
        ],)
    ),
    );
  }
} 