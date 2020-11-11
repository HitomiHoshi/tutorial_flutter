import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_flutter/date_picker/date_time_picker_widget.dart';
import 'package:tutorial_flutter/date_picker/date_time_picker_widget2.dart';

class DateTimePickerPage extends StatefulWidget {
  @override
  _DateTimePickerPageState createState() => _DateTimePickerPageState();
}

class _DateTimePickerPageState extends State<DateTimePickerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DatePicker'),),
      body: Center(
        child: DateTimePickerWidget(),
      ),
    );
  }
}