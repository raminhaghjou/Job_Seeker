import 'package:flutter/material.dart';
import 'package:space/src/ui/components/near_job.dart';

class NearJobScreen extends StatefulWidget {

  _NearJobScreenState createState() => _NearJobScreenState();
}

class _NearJobScreenState extends State<NearJobScreen> {
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
    // final jobData = Provider.of<Jobs>(context);
    // final jobs = jobData.posts;
    return Scaffold(
      backgroundColor: Colors.transparent,
       body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
      controller: ScrollController(initialScrollOffset: 0),
      itemCount: 2,
      itemBuilder: (ctx, i) => (
            NearJob()
      ),

    ),
    );
  }
}
