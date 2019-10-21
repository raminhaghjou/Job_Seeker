import 'package:flutter/material.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:space/src/ui/settings/setting_payment_method.dart';
class SettingUIPayment extends StatefulWidget {
  const SettingUIPayment({ Key key, String title }) : super(key: key);
  @override
  _SettingUIPaymentState createState() => _SettingUIPaymentState();
}

class _SettingUIPaymentState extends State<SettingUIPayment> with SingleTickerProviderStateMixin {

  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context,true);
          },
          icon: Icon(FeatherIcons.chevronLeft, color: Color(0xff2c4057), size: 16)),
        elevation: 1,
        backgroundColor: Colors.white,
         title: Text('Settings', style: style.copyWith(color: Color(0xff2c4057), 
         fontSize: 14, fontWeight: FontWeight.w500,letterSpacing: 1,)),
      ),
   
  body: Container(
    padding: EdgeInsets.only(top: 20, left: 20, right: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Settings', style: style.copyWith(fontWeight: FontWeight.bold, color: Color(0xff3b3b3b))),
        Text('Set your payment options', style: style.copyWith(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xff3b3b3b), height: 2)),
        MaterialButton(
         onPressed: () {  Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => new PaymentMethod())); 
            },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Text('Payment method', style: style.copyWith(fontSize: 17, color: Color(0xff3b3b3b), height: 3)),
          Image.asset('assets/icon10.png', scale: 1.6)
        ],)),
        Container(
              height: 20,
              child: Divider(
                color: Color(0xffc9c8c8),
              ),
            ),
        MaterialButton(
         onPressed: (){},    
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Text('Subscribes', style: style.copyWith(fontSize: 17, color: Color(0xff3b3b3b), height: 2)),
          Image.asset('assets/icon9.png', scale: 1.6)
        ],)),
         Container(
              height: 20,
              child: Divider(
                color: Color(0xffc9c8c8),
              ),
            ),
      ],
    ),
  )
          
    
    );
  
  
  }

  
}