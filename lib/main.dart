import 'package:flutter/material.dart';
import 'package:tutorial_flutter/bootstrap/bootstrap_example.dart';
import 'package:tutorial_flutter/multiple_page_connection/page_one.dart';
// import 'package:tutorial_flutter/input_field/template_input_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BootstrapExample(),
    );
  }
}

