class Users {
  final int status;
  final String error;
  final List<Response> response;

  Users({this.status, this.error, this.response});

  factory Users.fromJson(Map<String, dynamic> json) {
    if (json['response'] != null) {
      
      var tempList = json['response'] as List;
      List<Response> responseList = tempList.map((i) => Response.fromJson(i)).toList();

      return Users(
        status: json['status'],
        error: json['error'],
        response: responseList,
      );
    } else {
      return Users(
        status: json['status'],
        error: json['error'],
      );
    }
  }
}

class Response {
  int id;
  String fullName;
  String nRIC;
  String homePhone;
  String mobilePhone;
  String residentialAddress;
  String billingAddress;
  String email;
  String dateRegistered;
  int isPrincipal;
  String keypadCode;

  Response(
      {this.id,
      this.fullName,
      this.nRIC,
      this.homePhone,
      this.mobilePhone,
      this.residentialAddress,
      this.billingAddress,
      this.email,
      this.dateRegistered,
      this.isPrincipal,
      this.keypadCode});

  factory Response.fromJson(Map<String, dynamic> json) {
    return Response(
      id: json['Id'],
      fullName: json['FullName'],
      nRIC: json['NRIC'],
      homePhone: json['HomePhone'],
      mobilePhone: json['MobilePhone'],
      residentialAddress: json['ResidentialAddress'],
      billingAddress: json['BillingAddress'],
      email: json['Email'],
      dateRegistered: json['DateRegistered'],
      isPrincipal: json['IsPrincipal'],
      keypadCode: json['KeypadCode'],
    );
  }
}