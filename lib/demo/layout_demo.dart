import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        //主轴
        mainAxisAlignment: MainAxisAlignment.center,
        //交叉轴
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // AspectRatio(
          //   aspectRatio: 2.0/2.0,
          //   child: Container(
          //     color: Color.fromRGBO(3, 54, 255, 1.0),
          //   ),
          // ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 200.0
            ),
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          )
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Stack(
            children: <Widget>[
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: Container(
                  alignment: Alignment(-0.5, -0.5),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: Container(
                  alignment: Alignment(0.0, 0.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: Container(
                  alignment: Alignment(0.5, 0.5),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
                ),
              ),
            ],
          );;
  }
}