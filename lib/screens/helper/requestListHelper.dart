import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:blood365/screens/model/requestModel.dart';

class RequestService {
  String collection = "request";
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<List<RequestModel>> getRequest() async =>
      _firestore.collection(collection).get().then((result) {
        List<RequestModel> requests = [];
        for (DocumentSnapshot request in result.docs) {
          requests.add(RequestModel.fromSnapshot(request));
        }
        return requests;
      });
}
