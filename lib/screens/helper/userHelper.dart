import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:blood365/screens/model/user.dart';

class UserService {
  String collection = 'users';
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  void createUser(Map<String, dynamic> values) {
    String id = values["id"];
    _firestore.collection(collection).doc(values["id"]).set(values);
  }

  Future<UserModel> getUserById(String id) =>
      _firestore.collection(collection).doc(id).get().then((doc) {
        return UserModel.fromSnapshot(doc);
      });
}
