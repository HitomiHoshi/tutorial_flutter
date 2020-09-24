import 'package:flutter/material.dart';
import 'package:tutorial_flutter/multiple_page_connection/page_two.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        elevation: 1.0,
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              PageTwo() 
            );
          },
          child: Text("Go to Page two"),
        ),
      ),
    );
  
  }
}