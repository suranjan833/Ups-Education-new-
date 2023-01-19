import 'package:ups_education/app/data/model/country_model.dart';

class UserModel {
  String? firstName, lastName, email, mobile, address, pincode, password, token,image;
  States? selectedState;
  String? gender;
  String? city, dyear,dmonth, dday;
  Genders? selectedGender;
  DateTime? dob;
  Country? selectedCountry;
  int? userId;
  String? userID;
  int? countryId;
  int? stateId;
  String? stateName;
  int? otp;


  UserModel(
      {this.firstName,
      this.lastName,
      this.email,
        this.otp,
      this.mobile,
        this.userId,
      this.address,
      this.pincode,
      this.password,
      this.token,
      this.image,
      this.selectedState,
      this.gender,
      this.city,
      this.dyear,
      this.dmonth,
      this.dday,
      this.selectedGender,
      this.dob,
      this.selectedCountry,
      this.userID,
      this.countryId,
      this.stateId,
      this.stateName});

  UserModel.fromJson(Map<String, dynamic> json) {
     userId = json['userid'];
    firstName = json['firstname'];
    lastName = json['lastname'];
    email = json['email'];
    mobile = json['mobile'];
    city = json['city'];
    address = json['address'];
    gender = json['gender'];
    image = json['image'];
    pincode = json['pincode'];
    countryId = json['country_id'];
    stateId = json['state_id'];
    stateName = json['state'];
    dyear = json['dyear'];
    dmonth = json['dmonth'];
    dday = json['dday'];
  }

}
