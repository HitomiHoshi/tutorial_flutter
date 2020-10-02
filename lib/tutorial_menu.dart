import 'package:flutter/material.dart';

class TutorialMenu extends StatefulWidget {
  TutorialMenu({Key key}) : super(key: key);

  @override
  _TutorialMenu createState() => _TutorialMenu();
}

class _TutorialMenu extends State<TutorialMenu> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('QR Code Scanner & Generator'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Card(
            child: FlatButton(
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                        'Bootstrap',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/bootstrap-page');
              },
            ),
          ),
          Card(
            child: FlatButton(
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                        'Floating Action Button (FAB)',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/floating-action-button-page');
              },
            ),
          ),
          Card(
            child: FlatButton(
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                        'Input_field',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/input-field-page');
              },
            ),
          ),
          Card(
            child: FlatButton(
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                        'Multiple Page Connection',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/page-one');
              },
            ),
          ),
          Card(
            child: FlatButton(
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                        'push With Argument',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/push-with-argument-page');
              },
            ),
          ),
          Card(
            child: FlatButton(
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                        'PushNamed With Argument',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/push-name-with-argument-page');
              },
            ),
          ),
          Card(
            child: FlatButton(
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                        'Qr Code',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/qrcode-page');
              },
            ),
          ),
          Card(
            child: FlatButton(
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                        'Barcode Code Scan',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/barcode-scan-page');
              },
            ),
          ),
          Card(
            child: FlatButton(
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                        'Direct Launch',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/direct-launch-page');
              },
            ),
          ),
          Card(
            child: FlatButton(
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                        'Multiselect Formfield',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/multiselect-formfield-page');
              },
            ),
          ),
          Card(
            child: FlatButton(
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                        'Open Camera',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/open-camera-page');
              },
            ),
          ),
          Card(
            child: FlatButton(
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                        'Get Json',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/get-json-page');
              },
            ),
          ),
          Card(
            child: FlatButton(
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                        'Get Http',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/get-http-page');
              },
            ),
          ),
          Card(
            child: FlatButton(
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                        'Get Http One Page',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/get-http-one-page');
              },
            ),
          ),
          Card(
            child: FlatButton(
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Center(
                  child: Text(
                        'Post Http One Page',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/post-http-one-page');
              },
            ),
          ),
        ],
      ),
    );
  }
}
