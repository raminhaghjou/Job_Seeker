import 'package:flutter/material.dart';

import 'package:space/src/ui/seeker/layout/saved_lists.dart';

class SaveListScreen extends StatelessWidget {
  final bool showSave;

  SaveListScreen(this.showSave);

  @override
  Widget build(BuildContext context) {
    // final jobData = Provider.of<Jobs>(context);
    // final jobs = showSave ? jobData.savePosts : jobData.posts;
    return ListView.builder(
        padding: EdgeInsets.only(top: 5),
        // itemCount: jobs.length,
        itemBuilder: (ctx, i) => (
            // value: jobs[i],
            SavePosts()));
  }
}
