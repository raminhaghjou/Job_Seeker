import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:space/src/core/models/job.dart';

import './cart.dart';

class Applys with ChangeNotifier {
  List<Job> _applys = [];
  final String authToken;
  final String userId;

  Applys(this.authToken, this.userId, this._applys);

  List<ApplyItem> get applys {
    return [..._applys];
  }

  Future<void> fetchAndSetApplys() async {
    final url =
        'https://dreamjob-id.firebaseio.com/applys/$userId.json?auth=$authToken';
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
          amount: applyData['amount'],
          dateTime: DateTime.parse(applyData['dateTime']),
          jobs: (applyData['jobs'] as List<dynamic>)
              .map(
                (item) => CartItem(
                  id: item['id'],
                  price: item['price'],
                  quantity: item['quantity'],
                  title: item['title'],
                ),
              )
              .toList(),
        ),
      );
    });
    _applys = loadedApplys.reversed.toList();
    notifyListeners();
  }

  Future<void> addApply(List<CartItem> cartJobs, double total) async {
    final url =
        'https://dreamjob-id.firebaseio.com/applys/$userId.json?auth=$authToken';
    final timestamp = DateTime.now();
    final response = await http.post(
      url,
      body: json.encode({
        'amount': total,
        'dateTime': timestamp.toIso8601String(),
        'jobs': cartJobs
            .map((cp) => {
                  'id': cp.id,
                  'title': cp.title,
                  'quantity': cp.quantity,
                  'price': cp.price,
                })
            .toList(),
      }),
    );
    _applys.insert(
      0,
      ApplyItem(
        id: json.decode(response.body)['name'],
        amount: total,
        dateTime: timestamp,
        jobs: cartJobs,
      ),
    );
    notifyListeners();
  }
}
