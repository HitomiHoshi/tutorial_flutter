import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Users> fetchUsers() async {
  final response =
      await http.get('http://homesecurity.ikramatic.com.my:3333/users');
  // print("Response " + response.body);
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Users.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

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

class GetHttpOnePages extends StatefulWidget {
  GetHttpOnePages({Key key}) : super(key: key);

  @override
  _GetHttpOnePages createState() => _GetHttpOnePages();
}

class _GetHttpOnePages extends State<GetHttpOnePages> {
  Future<Users> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Users>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.response[0].fullName.toString());
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
