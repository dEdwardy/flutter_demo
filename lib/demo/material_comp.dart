import 'package:flutter/material.dart';
import './input_demo.dart';
import './dailog_demo.dart';


class MaterialCmp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'InputDemo',page: InputDemo()),
          ListItem(title: 'DailogDemo',page: DailogDemo()),
        ],
      ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          // ListItem(title: 'MaterialComponents',page: FloatingActionButtonDemo()),
          ListItem(title: 'InputDemo',page: InputDemo()),
        ],
      ),
    );
  }
}
class ListItem extends StatelessWidget {
  final String title;
  final Widget page;
  ListItem({
    this.title,
    this.page
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => page, 
          )
        );
      },
    );
  }
}