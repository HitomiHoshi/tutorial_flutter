import 'package:flutter/material.dart';

class TemplateInputField extends StatefulWidget {
  TemplateInputField({Key key}) : super(key: key);

  @override
  _TemplateInputField createState() => _TemplateInputField();
}

class _TemplateInputField extends State<TemplateInputField> {
  Widget build(BuildContext context) {

Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Sign Up',
        softWrap: true,
      ),
    );

    Widget inputSection = Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
              isDense: true, // Added this
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Ic Number',
              isDense: true, // Added this
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Phone Number',
              isDense: true, // Added this
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Address',
              isDense: true, // Added this
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
              isDense: true, // Added this
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Confirm Password',
              isDense: true, // Added this
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Controller Id',
                    isDense: true, // Added this
                  ),
                )),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Check Number',
                    isDense: true, // Added this
                  ),
                )),
              ],
            ),
          )
        ],
      ),
    );

    Widget buttonSection = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(child: Text('Create Account'), onPressed: () { })
        ],
      ),
    );

    return Scaffold(
        body: ListView(
      children: [titleSection, inputSection, buttonSection],
    ));
  }
}