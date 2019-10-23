import 'package:flutter/material.dart';

import 'package:space/src/ui/employer/layout/employer_post.dart';

class EmployerPostScreen extends StatelessWidget {
  static const routeName = '/employer-posts';

  Future<void> _refreshJobs(BuildContext context) async {
    //await 
    // Provider.of<Jobs>(context, listen: false);//.fetchAndSetJobs(true);
  }

  @override
  Widget build(BuildContext context) {
    // final jobsData = Provider.of<Jobs>(context);
    print('rebuilding...');
    return FutureBuilder(
      future: _refreshJobs(context),
      builder: (ctx, snapshot) =>
          snapshot.connectionState == ConnectionState.waiting
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : RefreshIndicator(
                  onRefresh: () => _refreshJobs(context),
                  child: 
                  // Consumer<Jobs>(
                  //   builder: (ctx, jobsData, _) => 
                    ListView.builder(
                      padding: const EdgeInsets.all(0),
                      // itemCount: jobsData.posts.length,
                      itemBuilder: (_, i) => EmployerPost(
                        // jobsData.posts[i].id,
                        // jobsData.posts[i].salary,
                        // jobsData.posts[i].title,
                        // jobsData.posts[i].type,
                        // jobsData.posts[i].location,
                      ),
                    ),
                  ),
                // ),
    );
  }
}
