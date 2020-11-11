import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class DateFilter extends StatefulWidget {
  @override
  _DateFilterState createState() => _DateFilterState();
}

class _DateFilterState extends State<DateFilter> {
  var temp = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date'),
      ),
      body: ListView(
        children: [
          Text(formatDate(DateTime(1989, 2, 21), [yyyy, '-', mm, '-', dd])),
          Text(formatDate(DateTime(1989, 2, 21), [yy, '-', m, '-', dd])),
          Text(formatDate(DateTime(1989, 2, 1), [yy, '-', m, '-', d])),
          Text(formatDate(DateTime(1989, 2, 1), [yy, '-', MM, '-', d])),
          Text(formatDate(DateTime(1989, 2, 21), [yy, '-', M, '-', d])),
          Text(formatDate(DateTime(1989, 2, 1), [yy, '-', M, '-', d])),
          Text(formatDate(DateTime(2018, 1, 14), [yy, '-', M, '-', DD])),
          Text(formatDate(DateTime(2018, 1, 14), [yy, '-', M, '-', D])),
          Text(formatDate(
              DateTime(1989, 02, 1, 15, 40, 10), [HH, ':', nn, ':', ss])),
          Text(formatDate(DateTime(1989, 02, 1, 15, 40, 10),
              [hh, ':', nn, ':', ss, ' ', am])),
          Text(formatDate(DateTime(1989, 02, 1, 15, 40, 10),
              [hh, ':', nn, ':', ss, ' ', am])),
          Text(formatDate(DateTime(1989, 02, 1, 15, 40, 10), [hh])),
          Text(formatDate(DateTime(1989, 02, 1, 15, 40, 10), [h])),
          Text(formatDate(DateTime(1989, 02, 1, 5), [am])),
          Text(formatDate(DateTime(1989, 02, 1, 15), [am])),
          Text(formatDate(
              DateTime(1989, 02, 1, 15, 40, 10), [HH, ':', nn, ':', ss, z])),
          Text(formatDate(DateTime(1989, 02, 1, 15, 40, 10),
              [HH, ':', nn, ':', ss, ' ', Z])),
          Text(formatDate(DateTime(1989, 02, 21), [yy, ' ', w])),
          Text(formatDate(DateTime(1989, 02, 21), [yy, ' ', W])),
          Text(formatDate(DateTime(1989, 12, 31), [yy, '-W', W])),
          Text(formatDate(DateTime(1989, 1, 1), [yy, '-', mm, '-w', W])),
          Text(formatDate(DateTime(1989, 02, 1, 15, 40, 10),
              [HH, ':', nn, ':', ss, ' ', Z])),
          Text(formatDate(DateTime(2020, 04, 18, 21, 14), [H, '\\h', n])),
          Text(formatDate(DateTime(2020, 04, 18, 21, 14), [H, '\\h', n])),
          Text(formatDate(DateTime.parse('2020-11-04T20:34:03.000Z').toLocal(), [yyyy, '/', mm, '/', dd, ' ', hh, ':', nn, ':', ss, ' ', am, ' ',Z])),
          Text(temp.isUtc.toString()),
          Text(formatDate(DateTime.utc(temp.year,temp.month,temp.day,temp.hour,temp.minute,temp.second).toLocal(), [yyyy, '/', mm, '/', dd, ' ', hh, ':', nn, ':', ss, ' ', am, ' ',Z])),
          Text(temp.toString()),
          Column(
          children: <Widget>[
            FlatButton(
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2018, 3, 5),
                      maxTime: DateTime(2019, 6, 7),
                      theme: DatePickerTheme(
                          headerColor: Colors.orange,
                          backgroundColor: Colors.blue,
                          itemStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                          doneStyle: TextStyle(color: Colors.white, fontSize: 16)),
                      onChanged: (date) {
                    print('change $date in time zone ' + date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                },
                child: Text(
                  'show date picker(custom theme &date time range)',
                  style: TextStyle(color: Colors.blue),
                )),
            FlatButton(
                onPressed: () {
                  DatePicker.showTimePicker(context, showTitleActions: true, onChanged: (date) {
                    print('change $date in time zone ' + date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now());
                },
                child: Text(
                  'show time picker',
                  style: TextStyle(color: Colors.blue),
                )),
            FlatButton(
                onPressed: () {
                  DatePicker.showTime12hPicker(context, showTitleActions: true, onChanged: (date) {
                    print('change $date in time zone ' + date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now());
                },
                child: Text(
                  'show 12H time picker with AM/PM',
                  style: TextStyle(color: Colors.blue),
                )),
            FlatButton(
                onPressed: () {
                  DatePicker.showDateTimePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2020, 5, 5, 20, 50),
                      maxTime: DateTime(2020, 6, 7, 05, 09), onChanged: (date) {
                    print('change $date in time zone ' + date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, locale: LocaleType.zh);
                },
                child: Text(
                  'show date time picker (Chinese)',
                  style: TextStyle(color: Colors.blue),
                )),
            FlatButton(
                onPressed: () {
                  DatePicker.showDateTimePicker(context, showTitleActions: true, onChanged: (date) {
                    print('change $date in time zone ' + date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime(2008, 12, 31, 23, 12, 34));
                },
                child: Text(
                  'show date time picker (English-America)',
                  style: TextStyle(color: Colors.blue),
                )),
            FlatButton(
                onPressed: () {
                  DatePicker.showDateTimePicker(context, showTitleActions: true, onChanged: (date) {
                    print('change $date in time zone ' + date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime(2008, 12, 31, 23, 12, 34), locale: LocaleType.nl);
                },
                child: Text(
                  'show date time picker (Dutch)',
                  style: TextStyle(color: Colors.blue),
                )),
            FlatButton(
                onPressed: () {
                  DatePicker.showDateTimePicker(context, showTitleActions: true, onChanged: (date) {
                    print('change $date in time zone ' + date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime(2008, 12, 31, 23, 12, 34), locale: LocaleType.ru);
                },
                child: Text(
                  'show date time picker (Russian)',
                  style: TextStyle(color: Colors.blue),
                )),
            FlatButton(
                onPressed: () {
                  DatePicker.showDateTimePicker(context, showTitleActions: true, onChanged: (date) {
                    print('change $date in time zone ' + date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.utc(2019, 12, 31, 23, 12, 34), locale: LocaleType.de);
                },
                child: Text(
                  'show date time picker in UTC (German)',
                  style: TextStyle(color: Colors.blue),
                )),
            FlatButton(
                onPressed: () {
                  DatePicker.showPicker(context, showTitleActions: true, onChanged: (date) {
                    print('change $date in time zone ' + date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, pickerModel: CustomPicker(currentTime: DateTime.now()), locale: LocaleType.en);
                },
                child: Text(
                  'show custom time picker,\nyou can custom picker model like this',
                  style: TextStyle(color: Colors.blue),
                )),
          ],
        ),
        ],
      ),
    );
  }
}

class CustomPicker extends CommonPickerModel {
  String digits(int value, int length) {
    return '$value'.padLeft(length, "0");
  }

  CustomPicker({DateTime currentTime, LocaleType locale}) : super(locale: locale) {
    this.currentTime = currentTime ?? DateTime.now();
    this.setLeftIndex(this.currentTime.hour);
    this.setMiddleIndex(this.currentTime.minute);
    this.setRightIndex(this.currentTime.second);
  }

  @override
  String leftStringAtIndex(int index) {
    if (index >= 0 && index < 24) {
      return this.digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String middleStringAtIndex(int index) {
    if (index >= 0 && index < 60) {
      return this.digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String rightStringAtIndex(int index) {
    if (index >= 0 && index < 60) {
      return this.digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String leftDivider() {
    return "|";
  }

  @override
  String rightDivider() {
    return "|";
  }

  @override
  List<int> layoutProportions() {
    return [1, 2, 1];
  }

  @override
  DateTime finalTime() {
    return currentTime.isUtc
        ? DateTime.utc(currentTime.year, currentTime.month, currentTime.day,
            this.currentLeftIndex(), this.currentMiddleIndex(), this.currentRightIndex())
        : DateTime(currentTime.year, currentTime.month, currentTime.day, this.currentLeftIndex(),
            this.currentMiddleIndex(), this.currentRightIndex());
  }
}
