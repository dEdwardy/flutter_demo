import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0
      ),
    );
  }
}

class GridViewExtendDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (index) {
      return Container(
          color: Colors.grey[300],
          alignment: Alignment.center,
          child: Text(
            'Item ${index+1}',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey
            ),
          ),
        );
    });
  }
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      //默认 vertical
      // scrollDirection: Axis.horizontal,
      maxCrossAxisExtent: 80.0,
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 12.0,
      children: _buildTiles(100)
    );
  }
}
class GridViewDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (index) {
      return Container(
          color: Colors.grey[300],
          alignment: Alignment.center,
          child: Text(
            'Item ${index+1}',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey
            ),
          ),
        );
    });
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      //默认 vertical
      // scrollDirection: Axis.horizontal,
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 12.0,
      children: _buildTiles(100)
    );
  }
}
class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 130.0,
          left: 180.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Title: ${posts[index].title}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
              Text(
                'Author: ${posts[index].author}',
                style: TextStyle(
                  color: Colors.white
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    // return PageViewDemo();
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
      scrollDirection: Axis.vertical,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false,
      // reverse: true,
      scrollDirection: Axis.vertical,
      onPageChanged: (currentPageIndex) {
        print('PageIndex: $currentPageIndex');
      },
      controller: PageController(
        initialPage: 0,
        //记住用户选择的page
        keepPage: false,
        viewportFraction: 1.0
      ),
      children: <Widget>[
        Container(
          color: Colors.red[900],
          alignment: Alignment(0.0,0.0),
          child: Text(
            'ONE',
            style:TextStyle(
              fontSize: 32.0,
              color: Colors.white
            ),
          ),
        ),
        Container(
          color: Colors.yellow[900],
          alignment: Alignment(0.0,0.0),
          child: Text(
            'TWO',
            style:TextStyle(
              fontSize: 32.0,
              color: Colors.white
            ),
          ),
        ),
        Container(
          color: Colors.blue[900],
          alignment: Alignment(0.0,0.0),
          child: Text(
            'THREE',
            style:TextStyle(
              fontSize: 32.0,
              color: Colors.white
            ),
          ),
        ),
        Container(
          color: Colors.green[900],
          alignment: Alignment(0.0,0.0),
          child: Text(
            'FOUR',
            style:TextStyle(
              fontSize: 32.0,
              color: Colors.white
            ),
          ),
        ),
      ],
    );
  }
}