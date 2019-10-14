import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:space/src/core/models/jobs.dart';
import 'package:space/src/ui/seeker/layout/saved_lists.dart';

class SaveListScreen extends StatelessWidget {
  final bool showSave;

  SaveListScreen(this.showSave);

  @override
  Widget build(BuildContext context) {
    final jobData = Provider.of<Jobs>(context);
    final jobs = showSave ? jobData.savePosts : jobData.posts;
    return ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: jobs.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: jobs[i],
        child: SavePosts(),
      ),
    );
  }
}
