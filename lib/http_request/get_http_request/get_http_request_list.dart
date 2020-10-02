import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:tutorial_flutter/http_request/get_http_request/get_http_request_PODO.dart';

class GetHttpRequestList extends StatefulWidget {
  final List<Response> logs;
  GetHttpRequestList({Key key, this.logs}) : super(key: key);

  @override
  _GetHttpRequestList createState() => _GetHttpRequestList();
}

class _GetHttpRequestList extends State<GetHttpRequestList> {
  @override
  Widget build(BuildContext context) {
    // Color primary = Theme.of(context).primaryColor;

    return ListView.builder(
      itemCount: widget.logs == null ? 0 : widget.logs.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Container(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(widget.logs[index].fullName.toString()),
                  // Text(widget.logs[index].response[0].fullName)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
