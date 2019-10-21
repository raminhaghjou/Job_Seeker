// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// // import 'package:space/src/core/models/apply.dart' as ord;

// class ApplyPost extends StatefulWidget {
//   // final ord.ApplyPost apply;
//   // ApplyPost(this.apply);

//   @override
//   _OrderItemState createState() => _OrderItemState();
// }

// class _OrderItemState extends State<ApplyPost> {
//   var _expanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedContainer(
//       duration: Duration(milliseconds: 300),
//       height: _expanded ? min(widget.apply.job.length * 20.0 + 110, 200) : 95,
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
//               height: _expanded
//                   ? min(widget.apply.job.length * 20.0 + 10, 100)
//                   : 0,
//               child: ListView(
//                 children: widget.apply.job
//                     .map(
//                       (job) => Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           // Text(
//                           //   job.title,
//                           //   style: TextStyle(
//                           //     fontSize: 18,
//                           //     fontWeight: FontWeight.bold,
//                           //   ),
//                           // ),
//                         ],
//                       ),
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
