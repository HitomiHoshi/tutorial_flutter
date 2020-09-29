import 'package:flutter/material.dart';
import 'package:tutorial_flutter/Navigation_w_argument/pushNamed_w_argument.dart';
import 'package:tutorial_flutter/Navigation_w_argument/push_w_argument.dart';
import 'package:tutorial_flutter/bootstrap/bootstrap_example.dart';
import 'package:tutorial_flutter/floating_action_button/fab_speed_dial.dart';
import 'package:tutorial_flutter/input_field/template_input_field.dart';
import 'package:tutorial_flutter/multiple_page_connection/page_one.dart';
import 'package:tutorial_flutter/qrcode/qrcode_home_screen.dart';
import 'package:tutorial_flutter/tutorial_menu.dart';

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
      routes: <String, WidgetBuilder> {
        '/bootstrap-page': (BuildContext context) => new BootstrapExample(),
        '/floating-action-button-page': (BuildContext context) => new FabSpeedDial(),
        '/input-field-page': (BuildContext context) => new TemplateInputField(),
        '/page-one': (BuildContext context) => new PageOne(),
        '/push-with-argument-page': (BuildContext context) => new PushWArg(),
        '/push-name-with-argument-page': (BuildContext context) => new PushNamedWArg(),
        '/qrcode-page': (BuildContext context) => new QrcodeHomeScreen(),
      },
      home: TutorialMenu(),
    );
  }
}

