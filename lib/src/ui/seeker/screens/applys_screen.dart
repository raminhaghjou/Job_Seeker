// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'package:space/src/core/models/apply.dart' show Applys;
// import 'package:space/src/ui/seeker/layout/apply_post.dart';

// class ApplysScreen extends StatelessWidget {
//   static const routeName = '/Applys';

//   @override
//   Widget build(BuildContext context) {
//     print('building Applys');
//     // final applyData = Provider.of<Applys>(context);
//     return Scaffold(
//       body: FutureBuilder(
//         future: Provider.of<Applys>(context, listen: false).fetchAndSetApplys(),
//         builder: (ctx, dataSnapshot) {
//           if (dataSnapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else {
//             if (dataSnapshot.error != null) {
//               // ...
//               // Do error handling stuff
//               return Center(
//                 child: Text('An error occurred!'),
//               );
//             } else {
//               return Consumer<Applys>(
//                 builder: (ctx, applyData, child) => ListView.builder(
//                       itemCount: applyData.applys.length,
//                       itemBuilder: (ctx, i) => ApplyPost(applyData.applys[i]),
//                     ),
//               );
//             }
//           }
//         },
//       ),
//     );
//   }
// }
