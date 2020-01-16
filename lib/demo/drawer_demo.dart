import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Edw4rd',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('957196958@qq.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'http://www.pp-sp.com/UploadFiles/img_2_2994068999_1999447165_26.jpg'),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                  image: NetworkImage(
                    'http://img18.3lian.com/d/file/201706/09/c6106caa503817599ee748c7eabce754.jpg',
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.yellow[400].withOpacity(0.6),
                    BlendMode.hardLight,
                  ),
                )),
          ),
          ListTile(
            title: Text(
              'Messages',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.message,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Favorite',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Settings',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.settings,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () {
              
            },
          ),
          ListTile(
            title: Text(
              'Form',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.power_input,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/form');
            },
          ),
          ListTile(
            title: Text(
              'HttpDemo',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.http,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/http');
            },
          ),
          ListTile(
            title: Text(
              'AnimationDemo',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.assignment_late,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/animation');
            },
          ),
          ListTile(
            title: Text(
              'Material Components',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.insert_comment,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/material');
            },
          ),
          ListTile(
            title: Text(
              'Bottom Sheet',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.insert_comment,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/bottom_sheet');
            },
          ),
        ],
      ),
    );
  }
}
