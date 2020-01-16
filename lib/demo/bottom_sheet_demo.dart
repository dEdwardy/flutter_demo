import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  String _choice = 'Nothing';
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();
  Future _openModalBottomSheet() async {
    final option = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    'Option A',
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    Navigator.pop(context, 'A');
                  },
                ),
                ListTile(
                  title: Text('Option B', textAlign: TextAlign.center),
                  onTap: () {
                    Navigator.pop(context, 'B');
                  },
                ),
                ListTile(
                  title: Text('Option C', textAlign: TextAlign.center),
                  onTap: () {
                    Navigator.pop(context, 'C');
                  },
                )
              ],
            ),
          );
        });
        switch (option) {
          case 'A':
            setState(() {
             _choice = 'A'; 
            });
            break;
          case 'B':
            setState(() {
             _choice = 'B'; 
            });
            break;
          case 'C':
            setState(() {
             _choice = 'C'; 
            });
            break;
          default:
        }
  }

  _openBottomSheet() {
    //todo 多次点击路由多次push 返回pop也需要点击多次
    _bottomSheetScaffoldKey.currentState
        .showBottomSheet((BuildContext context) {
      return BottomAppBar(
        child: Container(
          height: 90.0,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.pause_circle_outline),
              SizedBox(
                width: 16.0,
              ),
              Text('01:30/03.30'),
              Expanded(
                child: Text(
                  'Fix you - Coldplay',
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('Bottom Sheet Demo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('Open Bottom Sheet',
                      style: TextStyle(color: Colors.white)),
                  color: Colors.red,
                  onPressed: _openBottomSheet,
                ),
                SizedBox(
                  width: 28.0,
                ),
                FlatButton(
                  child: Text('Modal Bottom Sheet',
                      style: TextStyle(color: Colors.white)),
                  color: Colors.blue,
                  onPressed: _openModalBottomSheet,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Your choice is  $_choice')
              ],
            )
          ],
        ),
      ),
    );
  }
}
