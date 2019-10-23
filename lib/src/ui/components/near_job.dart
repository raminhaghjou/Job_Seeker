import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

class NearJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final job = Provider.of<Job>(context, listen: false);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          // onTap: () {
          //   Navigator.of(context)
          //       .pushNamed(JobDetails.routeName, arguments: job.id);
          // },
          leading: SizedBox(
            height: 40,
            child: Image.asset('assets/mekuru.png', fit: BoxFit.cover),
          ),
          title: Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(('Head Chef'),
                        style: TextStyle(fontSize: 18, height: 2)),
                    Text('1w',
                        style:
                            TextStyle(fontSize: 10, color: Color(0xffc9c8c8))),
                  ],
                ),
                Text(
                  'Mekuru Ramen',
                  style: TextStyle(
                      fontSize: 12, color: Color(0xff5f5f5f), height: 1),
                ),
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 1),
                        child: Icon(FeatherIcons.mapPin,
                            size: 11, color: Color(0xff8997a7))),
                    Text('Pontianak, West Borneo',
                        style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff5f5f5f),
                            height: 1.5)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
