import 'package:flutter/foundation.dart';

class Job with ChangeNotifier {
  final String id;
  final String title;
  final String employerName;
  final String location;
  final String workingday;
  final String workinghour;
  final String description;
  final String industry;
  final String education;
  final String skill;
  final double salary;
  final String type;
  final String imageUrl;
  final String gender;
  final String typeSalary;
  bool isSave;

  Job({
    @required this.id,
    @required this.title,
    this.employerName,
    @required this.location, 
    @required this.workingday,
    @required this.workinghour,
    @required this.description,
    @required this.industry,
    @required this.education,
    @required this.skill,
    @required this.salary, 
    @required this.type,
    @required this.typeSalary,
    this.imageUrl,
    @required this.gender,
    this.isSave = false,
  });

  void toggleSavePosts() {
    isSave = !isSave;
    notifyListeners();
 }
}