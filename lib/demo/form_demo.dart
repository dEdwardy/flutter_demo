import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Theme(
        data:Theme.of(context).copyWith(
          primaryColor: Colors.red
        ),
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFieldDemo()
            ],
          ),
        ),
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Theme.of(context).primaryColor,
    );
  }
}
class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key key}) : super(key: key);

  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}