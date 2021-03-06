// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// import '../../../core/models/apply.dart' as ord;

// class ApplyItem extends StatefulWidget {
//   final ord.ApplyItem apply;

//   ApplyItem(this.apply);

//   @override
//   _ApplyItemState createState() => _ApplyItemState();
// }

// class _ApplyItemState extends State<ApplyItem> {
//   var _expanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedContainer(
//       duration: Duration(milliseconds: 300),
//       height:
//           _expanded ? min(widget.apply.job.length * 20.0 + 110, 200) : 95,
//       child: Card(
//         margin: EdgeInsets.all(10),
//         child: Column(
//           children: <Widget>[
//             ListTile(
//               subtitle: Text(
//                 DateFormat('dd/MM/yyyy hh:mm').format(widget.apply.dateTime),
//               ),
//               trailing: IconButton(
//                 icon: Icon(_expanded ? Icons.expand_less : Icons.expand_more),
//                 onPressed: () {
//                   setState(() {
//                     _expanded = !_expanded;
//                   });
//                 },
//               ),
//             ),
//             AnimatedContainer(
//               duration: Duration(milliseconds: 300),
//               padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
//               height: _expanded ? min(widget.apply.job.length * 20.0 + 10, 100) : 0,
//               child: ListView(
//                 children: widget.apply.job
//                     .map(
//                       (prod) => Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: <Widget>[
//                               Text(
//                                 prod.title,
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                     )
//                     .toList(),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
