import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:tutorial_flutter/http_request/get_http_request_PODO.dart';
import 'package:tutorial_flutter/http_request/get_http_request_list.dart';
// import 'package:flutter_bootstrap/flutter_bootstrap.dart';

class GetHttpRequest extends StatefulWidget {
  GetHttpRequest({Key key}) : super(key: key);

  @override
  _GetHttpRequest createState() => _GetHttpRequest();
}

class _GetHttpRequest extends State<GetHttpRequest> {
  List logs;

Future<String> fetchUsers() async {

    var result = await http.get('http://homesecurity.ikramatic.com.my:3333/users');
    print(jsonDecode(result.body));
    return result.body;

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
                  print('snapshot: '+ snapshot.data.toString());
                  List<GetHttpRequestRespondsPODO> allLog = parseJson(
                    snapshot.data.toString(),
                  );
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
          // child: RaisedButton(onPressed: ()async{
          //   // var url = 'http://homesecurity.ikramatic.com.my:3333/users';
          //   var url = 'https://www.googleapis.com/books/v1/volumes?q={http}';
          //   // Await the http get response, then decode the json-formatted response.
          //   var response = await http.get(url);
          //   if (response.statusCode == 200) {
          //     var jsonResponse = json.decode(response.body);
          //     List items = jsonResponse['items'];
          //     var length = items[0];
          //     print('Number of books about http: $length.');
          //   } else {
          //     print('Request failed with status: ${response.statusCode}.');
          //   }
          // }),
        ),
      ),
    );
  }

  List<GetHttpRequestRespondsPODO> parseJson(String response) {
    if (response == null) {
      return [];
    }

    final parsed =
        json.decode(response.toString()).cast<Map<String, dynamic>>();
    return parsed.map<GetHttpRequestRespondsPODO>((json) => new GetHttpRequestRespondsPODO.fromJson(json)).toList();
  }
}
