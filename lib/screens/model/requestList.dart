class Request {
  final String userName;
  final String image;
  final String hospitalName;
  final String hospitalLocation;
  final String bloodGroup;
  final String bloodCategory;
  final String userPhone;
  final String userEmail;
  final String patientsDescription;
  final String patientsType;
  final String patientsDepartment;
  final String patientsBed;

  Request(
      {this.userName,
      this.image,
      this.hospitalName,
      this.hospitalLocation,
      this.bloodGroup,
      this.bloodCategory,
      this.userPhone,
      this.userEmail,
      this.patientsType,
      this.patientsDepartment,
      this.patientsBed,
      this.patientsDescription});
}
