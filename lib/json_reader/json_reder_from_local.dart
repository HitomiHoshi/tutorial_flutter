import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tutorial_flutter/json_reader/json_reder_from_local_PODO.dart';
import 'package:tutorial_flutter/json_reader/json_reder_from_local_list.dart';
// import 'package:flutter_bootstrap/flutter_bootstrap.dart';

class JsonReader extends StatefulWidget {
  JsonReader({Key key}) : super(key: key);

  @override
  _JsonReader createState() => _JsonReader();
}

class _JsonReader extends State<JsonReader> {
  List logs;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1.0,
        title: Text('Log', style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/settings-page',
                ModalRoute.withName('/home-page'),
              );
            },
          )
        ],
      ),
      body: Container(
        child: Center(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('json/log_list_data.json'),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              // print('snapshot: '+ snapshot.toString());
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  List<JsonReaderPODO> allLog = parseJson(
                    snapshot.data.toString(),
                  );
                  return allLog.isNotEmpty
                      ? new JsonReaderList(logs: allLog)
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

  List<JsonReaderPODO> parseJson(String response) {
    if (response == null) {
      return [];
    }

    final parsed =
        json.decode(response.toString()).cast<Map<String, dynamic>>();
    return parsed.map<JsonReaderPODO>((json) => new JsonReaderPODO.fromJson(json)).toList();
  }
}
