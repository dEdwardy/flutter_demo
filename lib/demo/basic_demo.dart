import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  final String imageUrl = 'http://image.biaobaiju.com/uploads/20181223/21/1545570640-CtVFKQTvdI.jpg';
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeatY,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withOpacity(0.3),
            BlendMode.hardLight,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid
              ),
              // borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(2.0,2.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 16.0,
                  spreadRadius: 1.0
                ),
              ],
              shape: BoxShape.circle,
              // gradient: RadialGradient(
              //   colors: [
              //     Color.fromRGBO(7, 102, 255, 1.0),
              //     Color.fromRGBO(3, 28, 128, 1.0),
              //   ],
              // ),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle _textStyle = TextStyle(
        fontSize: 16.0, color: Colors.purple, fontWeight: FontWeight.w100);
    final String _author = 'Edw4rd';
    return RichText(
        text: TextSpan(text: _author, style: _textStyle, children: [
      TextSpan(
        text: '.cn',
        style: TextStyle(
          fontSize: 17.0,
          color: Colors.red,
        ),
      ),
    ]));
  }
}
