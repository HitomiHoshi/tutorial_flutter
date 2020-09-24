import 'package:flutter/material.dart';
import 'package:tutorial_flutter/multiple_page_connection/page_three.dart';

class PageTwo extends MaterialPageRoute<Null> {
  PageTwo() : super(builder: (BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(ctx).accentColor,
        elevation: 1.0,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              ctx,
              new MaterialPageRoute(builder: (ctx) => new PageThree()) 
            );
          },
          child: Text("Go to Page Three"),
        ),
      ),
    );
  });
}
