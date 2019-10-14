import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';


class InboxUiList extends StatefulWidget {
  const InboxUiList({ Key key, String title }) : super(key: key);
  @override
  _InboxUiListState createState() => _InboxUiListState();
}

class _InboxUiListState extends State<InboxUiList> with SingleTickerProviderStateMixin {

  
  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context,true);
          },
          icon: Icon(FeatherIcons.chevronLeft, color: Color(0xff2c4057), size: 16)),
        elevation: 1,
        backgroundColor: Colors.white,
        title: Row(children:[ 
            Stack(
              alignment: Alignment(1, -1),
              children:[ 
            CircleAvatar(
            backgroundColor: Color(0xff757575),
            radius: 20.0,
            child: Image.asset('assets/img_profile-2.png', scale: 3.3,),
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
          Container(
            padding: EdgeInsets.only(left: 20),
          child:Text('Mekuru Ramen', style: style.copyWith(color: Color(0xff2c4057), 
          fontSize: 18, fontWeight: FontWeight.w600,letterSpacing: 1)),
          ),
          ],
        ),
        centerTitle: true,
        actions: <Widget>[
            // action button
            IconButton(
              icon: Icon(Icons.videocam, color: Color(0xff4d4d4d), size: 33),
              onPressed: () {},
            ),
          ],
        ),
    body: SingleChildScrollView(
    child: Container(
      margin: EdgeInsets.only(top: 15),
      child: Column(
        children: <Widget>[
     Stack(
        children: [   
      Container(
        alignment: AlignmentDirectional.topEnd,
        margin: EdgeInsets.fromLTRB(0, 10, 15, 0),   
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
         new Container(
          width: 350,
          padding: EdgeInsets.fromLTRB(35, 15, 15, 15),
          margin: EdgeInsets.only(bottom: 5),
          decoration: new BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(5),
            boxShadow: [BoxShadow(
                color: Color(0x11000000),
                offset: Offset(2.121320343559643,2.1213203435596424),
                blurRadius: 21,
                spreadRadius: 0
            ) ],
          ),
          child: Column(
            children: [
            Text('Hello, nice to see you again today. Hope you are well.', 
              style: style.copyWith(fontSize: 16, color: Color(0xff757575))),
          
            ],
          ),
         ),    
            Text('03:41 PM', style: style.copyWith(fontSize: 12, color: Color(0xff757575))),
        ],
       ),
        ),    
           Stack(
            alignment: AlignmentDirectional.topStart,
            children: <Widget>[
            Container(),
            Container(
              margin: EdgeInsets.only(top: 20, left: 30),        
            child: Stack(
              alignment: Alignment(1, -1),
              children:[   
              CircleAvatar(
            backgroundColor: Color(0xff757575),
            radius: 20.0,
            child: Image.asset('assets/img_profile-2.png', scale: 3.3,),
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
           ), 
         ],
        ),   
       ],
      ), 

      Stack(
        children: [   
      Container(
        alignment: AlignmentDirectional.topStart,
        margin: EdgeInsets.fromLTRB(10, 10, 0, 0),   
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
         new Container(
          width: 350,
          padding: EdgeInsets.fromLTRB(15, 15, 35, 15),
          margin: EdgeInsets.only(bottom: 5),
          decoration: new BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(5),
            boxShadow: [BoxShadow(
                color: Color(0x11000000),
                offset: Offset(2.121320343559643,2.1213203435596424),
                blurRadius: 21,
                spreadRadius: 0
            ) ],
          ),
          child: Column(
            children: [
            Text('This is my office location. You can visit as per your time.', 
          style: style.copyWith(fontSize: 16, color: Color(0xff757575))),
            new Container(
              height: 200,
              decoration: new BoxDecoration(
                color: Color(0xffbdbdbd),
                boxShadow: [BoxShadow(
                    color: Color(0x11000000),
                    offset: Offset(2.121320343559643,2.1213203435596424),
                    blurRadius: 21,
                    spreadRadius: 0
                ) ],
              )
            ),
            ],
          ),
         ),    
            Text('03:42 PM', style: style.copyWith(fontSize: 12, color: Color(0xff757575))),
        ],
       ),
        ),    
           Stack(
            alignment: AlignmentDirectional.topEnd,
            children: <Widget>[
            Container(),
            Container(
              margin: EdgeInsets.only(top: 20, right: 30),        
            child: Stack(
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
           ), 
         ],
        ),   
       ],
      ), 

       Stack(
        children: [   
      Container(
        alignment: AlignmentDirectional.topEnd,
        margin: EdgeInsets.fromLTRB(0, 10, 15, 0),   
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
         new Container(
          width: 350,
          padding: EdgeInsets.fromLTRB(35, 15, 15, 15),
          margin: EdgeInsets.only(bottom: 5),
          decoration: new BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(5),
            boxShadow: [BoxShadow(
                color: Color(0x11000000),
                offset: Offset(2.121320343559643,2.1213203435596424),
                blurRadius: 21,
                spreadRadius: 0
            ) ],
          ),
          child: Column(
            children: [
            Text('Sure, I will visit the location in evening. Is that alright for you.', 
              style: style.copyWith(fontSize: 16, color: Color(0xff757575))),
          
            ],
          ),
         ),    
            Text('03:43 PM', style: style.copyWith(fontSize: 12, color: Color(0xff757575))),
        ],
       ),
        ),    
           Stack(
            alignment: AlignmentDirectional.topStart,
            children: <Widget>[
            Container(),
            Container(
              margin: EdgeInsets.only(top: 20, left: 30),        
            child: Stack(
              alignment: Alignment(1, -1),
              children:[   
              CircleAvatar(
            backgroundColor: Color(0xff757575),
            radius: 20.0,
            child: Image.asset('assets/img_profile-2.png', scale: 3.3,),
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
           ), 
         ],
        ),   
       ],
      ), 

       ],
           ),
      ),
    ),
    floatingActionButton: Container(
      padding: EdgeInsets.fromLTRB(40, 10, 10, 0),
      child: new TextField(
      style: style.copyWith(fontSize: 16, color: Color(0xff757575)),
      decoration: new InputDecoration(
      suffixIcon: Padding(
      padding: const EdgeInsetsDirectional.only(end: 12.0),
      child: Icon(Icons.place),
      ), 
      
      border: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(100.0),
        ),
      ),
      filled: true,
      hintStyle: style.copyWith(color: Color(0xffaaaaaa), fontSize: 16),
      hintText: "Message",
      fillColor: Colors.white),
      ),
    ),

        
    );
  }
} 