import 'package:flutter/material.dart';
import 'package:blood365/screens/model/requestModel.dart';
import 'package:blood365/screens/helper/requestListHelper.dart';

class RequestProvider with ChangeNotifier {
  RequestService _requestService = RequestService();
  List<RequestModel> requests = [];

  RequestProvider.initialize() {
    _loadRequests();
  }
  _loadRequests() async {
    requests = await _requestService.getRequest();
    notifyListeners();
  }
}
