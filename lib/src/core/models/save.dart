import 'package:flutter/foundation.dart';

class SavePost {
  final String id;
  final String jobId;
  final String title;
  final String employerName;
  final String location;
  final double salary;
  final String type;
  final String imageUrl;

  SavePost({
    @required this.id, 
    this.jobId,
    @required this.title,
    @required this.employerName,
    @required this.location, 
    @required this.salary, 
    @required this.type,
    @required this.imageUrl,
  });
}

class Save with ChangeNotifier {
  Map<String, SavePost> _posts = {};

  Map<String, SavePost> get posts {
    return {..._posts};
  }

  void addPosts(
    String jobId,
    double salary,
    String title,
    String employerName,
    String type,
    String location, 
    String imageUrl,
  ) {
    if (_posts.containsKey(jobId)) {
      // change quantity...
      _posts.update(
        jobId,
        (existingSavePost) => SavePost(
              id: existingSavePost.id,
              salary: existingSavePost.salary,
              title: existingSavePost.title,
              employerName: existingSavePost.employerName,
              type: existingSavePost.type,
              location: existingSavePost.location,              
              imageUrl: existingSavePost.imageUrl,
            ),
      );
    } else {
      _posts.putIfAbsent(
        jobId,
        () => SavePost(
              id: DateTime.now().toString(),
              title: title,
              employerName: employerName,
              salary: salary,
              location: location,
              imageUrl: imageUrl,
              type: type,
        )
      );
    }
    notifyListeners();
  }

  void removeItem(String jobId) {
    _posts.remove(jobId);
    notifyListeners();
  }

  void clear() {
    _posts = {};
    notifyListeners();
  }
}
