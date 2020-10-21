import 'package:flutter/material.dart';
import 'dart:async';

enum Answers { YES, NO, MAYBE }

class SimpleDialogs extends StatefulWidget {
  @override
  _SimpleDialogState createState() => _SimpleDialogState();
}

class _SimpleDialogState extends State<SimpleDialogs> {
  String _answer = '';

  Future _askUser() async {
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: new Text('Do you like Flutter?'),
            children: <Widget>[
              new SimpleDialogOption(
                child: new Text('Yes!!!'),
                onPressed: () {
                  Navigator.pop(context, Answers.YES);
                },
              ),
              new SimpleDialogOption(
                child: new Text('NO :('),
                onPressed: () {
                  Navigator.pop(context, Answers.NO);
                },
              ),
              new SimpleDialogOption(
                child: new Text('Maybe :|'),
                onPressed: () {
                  Navigator.pop(context, Answers.MAYBE);
                },
              ),
            ],
          );
        })) {
      case Answers.YES:
        setAnswer('yes');
        break;
      case Answers.NO:
        setAnswer('no');
        break;
      case Answers.MAYBE:
        setAnswer('maybe');
        break;
    }
  }

  void setAnswer(String value) {
    setState(() {
      _answer = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Dialog'),
      ),
      body: Container(
        child: Column(
          children: [
            Text('your answer $_answer'),
            RaisedButton(onPressed: () {
              _askUser();
            })
          ],
        ),
      ),
    );
  }
}
