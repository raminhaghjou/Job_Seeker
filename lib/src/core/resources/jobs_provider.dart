// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'package:space/src/ui/layout/job_list.dart';
// import 'package:space/src/core/models/jobs.dart';

// class JobsList extends StatelessWidget {
//   final bool showSavs;

//   JobsList(this.showSavs);

//   @override
//   Widget build(BuildContext context) {
//     final jobsData = Provider.of<Jobs>(context);
//     final jobs = showSavs ? jobsData.savePosts : jobsData.posts;
//     return ListView.builder(
//           itemCount: jobs.length,
//           itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
//             value: jobs[i],
//             //builder: (c) => jobs[i],
//             child: JobList(),
//           ),
//         );
//   }
// }


