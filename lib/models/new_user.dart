import 'dart:convert';

class NewUser {
  String? countryCode;
  String? companyCode;
  String? number;
  String? appSignature;
  NewUser({
    required this.countryCode,
    required this.number,
    required this.companyCode,
    required this.appSignature,
  });

  Map<String, dynamic> toMap() {
    return {
      "country_code": countryCode,
      "mobile_number": number,
      "app_signature": appSignature,
      "company_code": companyCode,
    };
  }

  String toJson() => json.encode(toMap());
}

class ConfirmOtp {
  String? mobileNumber;
  int? otp;
  int? token;
  ConfirmOtp({
    this.mobileNumber,
    this.otp,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return {"mobile_number": mobileNumber, "otp": otp, "token": token};
  }

  String toJson() => json.encode(toMap());
}

class LogoutModel {
  String? userId;
  String? token;
  LogoutModel({this.token, this.userId});

  Map<String, dynamic> toMap() {
    return {"user_id": userId,  "token": token};
  }

  String toJson() => json.encode(toMap());
}
