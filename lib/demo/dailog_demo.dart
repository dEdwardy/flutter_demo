import 'package:flutter/material.dart';

enum Option { A, B, C }

enum Action { Ok ,Cancel }

class DailogDemo extends StatefulWidget {
  @override
  _DailogDemoState createState() => _DailogDemoState();
}

class _DailogDemoState extends State<DailogDemo> {
  String _choice = 'Nothing';
  String dailog_choice = 'Nothing';
  Future _openAlertDailog() async {
    final option = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('AlertDailog'),
            content: Text('Are you sure about this?'),
            actions: <Widget>[
              FlatButton(
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () {
                  Navigator.pop(context, Action.Cancel);
                },
              ),
              FlatButton(
                child: Text(
                  'Yes',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  Navigator.pop(context, Action.Ok);
                },
              ),
            ],
          );
        });
    switch (option) {
      case Action.Ok:
        setState(() {
          dailog_choice = 'Ok';
        });
        break;
      case Action.Cancel:
        setState(() {
          dailog_choice = 'Cancel';
        });
        break;
      default:
    }
  }

  Future _oepenSimple() async {
    final option = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text('Simple Dailog'),
            children: <Widget>[
              SimpleDialogOption(
                child: Text('Option1'),
                onPressed: () {
                  Navigator.pop(context, Option.A);
                },
              ),
              SimpleDialogOption(
                child: Text('Option2'),
                onPressed: () {
                  Navigator.pop(context, Option.B);
                },
              ),
              SimpleDialogOption(
                child: Text('Option3'),
                onPressed: () {
                  Navigator.pop(context, Option.C);
                },
              ),
            ],
          );
        });
    switch (option) {
      case Option.A:
        setState(() {
          _choice = 'A';
        });
        break;
      case Option.B:
        setState(() {
          _choice = 'B';
        });
        break;
      case Option.C:
        setState(() {
          _choice = 'C';
        });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dailog Demo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Your choice is  $_choice'),
            SizedBox(height: 18.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Open AlertDailog'),
                  onPressed: _openAlertDailog,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 50.0),
                Text('Your dailog choice is $dailog_choice')
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.format_list_numbered),
        onPressed: _oepenSimple,
      ),
    );
  }
}
