import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:tutorial_flutter/json_reader/json_reder_from_local_PODO.dart';

class JsonReaderList extends StatefulWidget {
  final List<JsonReaderPODO> logs;
  JsonReaderList({Key key, this.logs}) : super(key: key);

  @override
  _JsonReaderList createState() => _JsonReaderList();
}

class _JsonReaderList extends State<JsonReaderList> {
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
                  Column(
                    children: [
                      Text(widget.logs[index].date),
                      Text(widget.logs[index].time)
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(widget.logs[index].description)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
