import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './demo/listview_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/sliver_demo.dart';
// ignore: unused_import
import './demo/navigator_demo.dart';
import './demo/form_demo.dart';
import './demo/material_comp.dart';
import './demo/http/http_demo.dart';
import './demo/animation/animation_demo.dart';
import './demo/bottom_sheet_demo.dart';
import './demo/snack_bar.dart';
import './demo/expansion_panel.dart';
// ignore: unused_import
import 'package:flutter_plugin_qrcode/flutter_plugin_qrcode.dart';

void main() => runApp(new App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      // home: NavigatorDemo(),
      //设置了initialRoute就不再设置home 反之亦然
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        // '/about': (context) => Page(title: 'About'),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialCmp(),
        '/http': (context) => HttpDemo(),
        '/animation': (context) => AnimationDemo(),
        '/material': (context) => MaterialCmp(),
        '/bottom_sheet': (context) => BottomSheetDemo(),
        '/snack_bar': (context) => SnackBarDemo(),
        '/snack_bar': (context) => SnackBarDemo(),
        '/expansion_panel': (context) => ExpansionPanelDemo(),
      },
      // home: SliverDemo(),
      theme: ThemeData(
          primarySwatch: Colors.red,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white,
          accentColor: Color.fromRGBO(3, 54, 255, 1.0)),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<void> getQrcodeState() async {
      // debugPrint('Search Button is pressed');
      String code;
      try {
        code = await FlutterPluginQrcode.getQRCode;
      } on PlatformException {
        code = 'error';
      }
      debugPrint(code);
      await showDialog(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              title: Text(code),
            );
          });
    }

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                // ignore: sdk_version_set_literal
                onPressed: () => getQrcodeState()),
          ],
          title: Text('Edw4rd',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white)),
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        // body: ListViewDemo()),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            // Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
            BasicDemo(),
            // Icon(Icons.change_history, size: 128.0, color: Colors.black12),
            LayoutDemo(),
            SliverDemo(),
            // Icon(Icons.directions_bike, size: 128.0, color: Colors.black12)
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
