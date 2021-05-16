import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RequestModel {
  static const UserName = 'name';
  static const EMAIL = 'email';
  static const ID = 'id';
  static const HospitalName = 'hospitalName';
  static const HospitalLocation = 'hospitalLocation';
  static const BloodGroup = 'bloodGroup';
  static const BloodCategory = 'bloodCategory';
  static const UserPhone = 'userPhone';
  static const PatientsDescription = 'patientsDescription';
  static const PatientsType = 'patientsType';
  static const PatientsDepartment = 'patientsDepartment';
  static const PatientsBed = 'patientsBed';
  static const PatientsImage = 'patientsImage';
  static const DonationTime = 'donationTime';
  static const CreateAt = 'createAt';

  String _name;
  String _email;
  String _id;
  String _hospitalName;
  String _hospitalLocation;
  String _bloodGroup;
  String _bloodCategory;
  String _userPhone;
  String _patientsDescription;
  String _patientsType;
  String _patientsDepartment;
  String _patientsBed;
  String _patientsImage;
  int _createAt;
  int _donationTime;

  //getters
  String get id => _id;
  String get name => _name;
  String get email => _email;
  String get hospitalName => _hospitalName;
  String get hospitalLocation => _hospitalLocation;
  String get bloodGroup => _bloodGroup;
  String get bloodCategory => _bloodCategory;
  String get userPhone => _userPhone;
  String get patientsDescription => _patientsDescription;
  String get patientsType => _patientsType;
  String get patientsDepartment => _patientsDepartment;
  String get patientsBed => _patientsBed;
  String get patientsImage => _patientsImage;
  int get createAt => _createAt;
  int get donationTime => _donationTime;

  RequestModel.fromSnapshot(DocumentSnapshot snapshot) {
    _id = snapshot.data()[ID];
    _name = snapshot.data()[UserName];
    _email = snapshot.data()[EMAIL];
    _hospitalName = snapshot.data()[hospitalName];
    _bloodGroup = snapshot.data()[bloodGroup];
    _bloodCategory = snapshot.data()[bloodCategory];
    _userPhone = snapshot.data()[userPhone];
    _patientsDescription = snapshot.data()[patientsDescription];
    _patientsDepartment = snapshot.data()[patientsDepartment];
    _patientsBed = snapshot.data()[patientsBed];
    _patientsImage = snapshot.data()[PatientsImage];
    _createAt = snapshot.data()[createAt];
    _donationTime = snapshot.data()[donationTime];
  }
}
