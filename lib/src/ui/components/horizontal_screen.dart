import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:space/src/core/models/jobs.dart';
import 'package:space/src/ui/components/horizontal_list.dart';

class RecommendedScreen extends StatefulWidget {
  _RecommendedScreenState createState() => _RecommendedScreenState();
}

class _RecommendedScreenState extends State<RecommendedScreen> {
  // var _isInit = true;
  var _isLoading = false;

  // @override
  // void didChangeDependencies() {
  //   if (_isInit) {
  //     setState(() {
  //       _isLoading = true;
  //     });
  //     Provider.of<Jobs>(context).fetchAndSetJobs().then((_) {
  //       setState(() {
  //         _isLoading = false;
  //       });
  //     });
  //   }
  //   _isInit = false;
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    final jobData = Provider.of<Jobs>(context);
    final jobs = jobData.posts;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 5),
              scrollDirection: Axis.horizontal,
              itemCount: jobs.length,
              itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                // builder: (c) => jobs[i],
                value: jobs[i],
                child: RecommendedJob(
                    // jobs[i].id,
                    // jobs[i].title,
                    // jobs[i].imageUrl,
                    ),
              ),
            ),
    );
  }
}
