
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpDemo'),
        elevation: 0.0,
      ),
      body:HttpDemoHome()
    );
  }
}
class HttpDemoHome extends StatefulWidget {
  @override
  _HttpDemoHomeState createState() => _HttpDemoHomeState();
}

class _HttpDemoHomeState extends State<HttpDemoHome> {
  @override
  void initState() {
    super.initState();
    fetchPost();
  }
  fetchPost() async {
    final response = await http.get('https://resources.ninghao.net/demo/posts.json');
    print(response.statusCode);
    //JSON 转 map( dart中的Map 类似 js中的 Object)
    final data = json.decode(response.body);
    print(data is Map);
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}