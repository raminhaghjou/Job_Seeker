import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:space/src/core/models/job.dart';

import './cart.dart';

class ApplyItem {
  final String id;
  final List<Job> job;
  final DateTime dateTime;

  ApplyItem({
    @required this.id,
    @required this.job,
    @required this.dateTime,
  });
}

class Applys with ChangeNotifier {
  List<ApplyItem> _applys = [];
  final String authToken;
  final String userId;

  Applys(this.authToken, this.userId, this._applys);

  List<ApplyItem> get applys {
    return [..._applys];
  }

  Future<void> fetchAndSetApplys() async {
    final url = 'https://dreamjob-id.firebaseio.com/applys/$userId.json?auth=$authToken';
    final response = await http.get(url);
    final List<ApplyItem> loadedApplys = [];
    final extractedData = json.decode(response.body) as Map<String, dynamic>;
    if (extractedData == null) {
      return;
    }
    extractedData.forEach((applyId, applyData) {
      loadedApplys.add(
        ApplyItem(
          id: applyId,
          dateTime: DateTime.parse(applyData['dateTime']),
          job: (applyData['job'] as List<dynamic>)
              .map(
                (item) => Job(
                      id: item['id'],
                      title: item['title'],
                      type: item['type'],
                      workingday: item['workingday'],
                      workinghour: item['workinghour'],
                      salary: item['salary'],
                      description: item['description'],
                      location: item['location'],
                      industry: item['industry'],
                      skill: item['skill'],
                      education: item['education'],
                      gender: item['gender'],
                      typeSalary: item['typeSalary'],
                    ),
              )
              .toList(),
        ),
      );
    });
    _applys = loadedApplys.reversed.toList();
    notifyListeners();
  }

  Future<void> addApply(List<Job> addJobs) async {
    final url = 'https://dreamjob-id.firebaseio.com/applys/$userId.json?auth=$authToken';
    final timestamp = DateTime.now();
    final response = await http.post(
      url,
      body: json.encode({
        'dateTime': timestamp.toIso8601String(),
        'jobs': addJobs
            .map((cp) => {
                  'id': cp.id,
                  'title': cp.title,
                  'salary': cp.salary,
                })
            .toList(),
      }),
    );
    _applys.insert(
      0,
      ApplyItem(
        id: json.decode(response.body)['name'],
        dateTime: timestamp,
        job: addJobs,
      ),
    );
    notifyListeners();
  }
}
