class GetHttpRequestRespondsPODO {
  int status;
  String error;
  List<GetHttpRequestPODO> response;

  GetHttpRequestRespondsPODO({this.status, this.error, this.response});

  factory GetHttpRequestRespondsPODO.fromJson(Map<String, dynamic> json) {
    if (json['response'] != null) {
      var response = json['response'] as List;
      List<GetHttpRequestPODO> _response = response
          .map((tagJson) => GetHttpRequestPODO.fromJson(tagJson))
          .toList();

      return new GetHttpRequestRespondsPODO(
        status: json['status'] as int,
        error: json['error'] as String,
        response: _response,
      );
    } else {
      return new GetHttpRequestRespondsPODO(
        status: json['status'] as int,
        error: json['error'] as String,
        response: json['response'] as List,
      );
    }
  }
}

class GetHttpRequestPODO {
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
  String emergencyContactName;
  String emergencyContactPhone;
  String keypadCode;

  GetHttpRequestPODO(
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
      this.emergencyContactName,
      this.emergencyContactPhone,
      this.keypadCode});

  factory GetHttpRequestPODO.fromJson(Map<String, dynamic> json) {
    return new GetHttpRequestPODO(
      id: json['id'] as int,
      fullName: json['fullName'] as String,
      nRIC: json['nRIC'] as String,
      homePhone: json['homePhone'] as String,
      mobilePhone: json['mobilePhone'] as String,
      residentialAddress: json['residentialAddress'] as String,
      billingAddress: json['billingAddress'] as String,
      dateRegistered: json['dateRegistered'] as String,
      isPrincipal: json['isPrincipal'] as int,
      emergencyContactName: json['emergencyContactName'] as String,
      emergencyContactPhone: json['emergencyContactPhone'] as String,
      keypadCode: json['keypadCode'] as String,
    );
  }
}


