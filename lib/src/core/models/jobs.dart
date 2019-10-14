import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:space/src/core/models/http_exception.dart';

import 'package:space/src/core/models/job.dart';

// const String PARSE_APP_ID = '7lbdiypJa4ZfYMky5E7NxAGFWmnfP0CtTzk6mhRj';
// const String PARSE_APP_URL = 'https://parseapi.back4app.com/classes/job';
// const String CLIENT_KEY = 'UH2KRTDVttLRdEB5heG70tyAdB7pcjkHgtapP4mu';
// const String LIVE_QUERY_URL = 'wss://dreamjob.back4app.io';

class Jobs with ChangeNotifier {
 List<Job> _posts = [];

final String authToken;
final String userId;

Jobs(this.authToken, this.userId, this._posts);

 List<Job> get posts {
    return [..._posts];
  }

  List<Job> get savePosts {
    return _posts.where((jobPost) => jobPost.isSave).toList();
  }

  Job findById(String id) {
    return _posts.firstWhere((job) => job.id == id);
  }
  
  Future<void> fetchAndSetJobs([bool filterByUser = false]) async {
    final filterString = filterByUser ? 'orderBy"creatorId"&equalTo="$userId"' : '';
    var url = 
        'https://dreamjob-id.firebaseio.com/jobs.json?auth=$authToken&$filterString';
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }
      url =
          'https://dreamjob-id.firebaseio.com/userSaves/$userId.json?auth=$authToken';
      final saveResponse = await http.get(url);
      final saveData = json.decode(saveResponse.body);
      final List<Job> loadedJobs = [];
      extractedData.forEach((jobId, jobData) {
        loadedJobs.add(Job(
          id: jobId,
          title: jobData['title'],
          industry: jobData['industry'],
          workingday: jobData['workingday'],
          workinghour: jobData['workinghour'],
          gender: jobData['gender'],
          typeSalary: jobData['typeSalary'],
          type: jobData['type'],
          location: jobData['location'],
          education: jobData['education'],
          skill: jobData['skill'],
          description: jobData['description'],
          salary: jobData['salary'],
          imageUrl: jobData['imageUrl'],
          isSave: 
            saveData == null ? false : saveData[jobId] ?? false,
        ));
      });
      _posts = loadedJobs;
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }     
  }

  Future<void> addJob(Job job) async {
    final url = 'https://dreamjob-id.firebaseio.com/jobs.json?auth=$authToken';
    try {
      final response = await http.post(
        url,
        body: json.encode({
          'title': job.title,
          'gender': job.gender,
          'industry': job.industry,
          'workingday': job.workingday,
          'workinghour': job.workinghour,
          'type': job.type,
          'location': job.location,
          'education': job.education,
          'skill': job.skill,
          'description': job.description,
          'salary': job.salary,
          // 'imageUrl': job.imageUrl,
          'creatorId' : userId,
        }),
      );
    final newJob = Job(
      title: job.title,
      typeSalary: job.typeSalary,
      gender: job.gender,
      industry: job.industry,
      workingday: job.workingday,
      workinghour: job.workinghour,
      type: job.type,
      location: job.location,
      education: job.education,
      skill: job.skill,
      description: job.description,
      salary: job.salary,
      // imageUrl: job.imageUrl,
      id: json.decode(response.body)['name'],
    );
    _posts.add(newJob);
    _posts.insert(0, newJob);
    notifyListeners();
    } catch (error) {
      print(error);
      throw error;
  }
}

  Future<void> updateJob(String id, Job newJob) async {
    final jobIndex = _posts.indexWhere((job) => job.id == id);
    if (jobIndex >= 0) {
      final url = 
          'https://dreamjob-id.firebaseio.com/jobs/$id.json?auth=$authToken';
      await http.patch(url,
          body: json.encode({
            'title': newJob.title,
            'typeSalary': newJob.typeSalary,
            'gender': newJob.gender,
            'industry': newJob.industry,
            'workingday': newJob.workingday,
            'workinghour': newJob.workinghour,
            'type': newJob.type,
            'location': newJob.location,
            'education': newJob.education,
            'skill': newJob.skill,
            'description': newJob.description,
            'salary': newJob.salary,
            // 'imageUrl': newJob.imageUrl,
          }));
      _posts[jobIndex] = newJob;
      notifyListeners();
    } else {
      print('...');
    }
  }

  Future<void> deleteJob(String id) async {
    final url = 
        'https://dreamjob-id.firebaseio.com/jobs/$id.json?auth=$authToken';
    final existingJobIndex = _posts.indexWhere((job) => job.id == id);
    var existingJob = _posts[existingJobIndex];
    _posts.removeAt(existingJobIndex);
    notifyListeners();
    final response = await http.delete(url);
    if (response.statusCode >= 400) {
      _posts.insert(existingJobIndex, existingJob);
      notifyListeners();
      throw HttpException('Could not delete post.');
    }
    existingJob = null;
  }
}