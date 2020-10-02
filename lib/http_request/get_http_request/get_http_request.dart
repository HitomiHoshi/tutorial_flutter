import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:tutorial_flutter/http_request/get_http_request/get_http_request_PODO.dart';
import 'package:tutorial_flutter/http_request/get_http_request/get_http_request_list.dart';
// import 'package:flutter_bootstrap/flutter_bootstrap.dart';

class GetHttpRequest extends StatefulWidget {
  GetHttpRequest({Key key}) : super(key: key);

  @override
  _GetHttpRequest createState() => _GetHttpRequest();
}

class _GetHttpRequest extends State<GetHttpRequest> {
  List logs;

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

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1.0,
        title: Text('Log', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        child: Center(
          child: FutureBuilder(
            future: fetchUsers(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  List<Response> allLog = snapshot.data.response;
                  return allLog.isNotEmpty
                      ? new GetHttpRequestList(logs: allLog)
                      : Center(
                          child: CircularProgressIndicator(),
                        );
                }
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
