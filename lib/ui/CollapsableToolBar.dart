import 'package:flutter/material.dart';
import 'dart:math' as matematika;

class CollapsableToolBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text("Sliver App Bar",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold)),
          backgroundColor: Colors.blue.shade900,
          expandedHeight: 200.0,
          floating: true,
          pinned: true,
          // snap:true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            background: Image.asset(
              "assets/images/image.jpg",
              fit: BoxFit.fill,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate:
                SliverChildBuilderDelegate(_dinamikELement, childCount: 20),
          ),
        ),
      ],
    );
  }

  Container buildContainer(int index) {
    return Container(
      height: 200.0,
      color: index % 2 == 0 ? Colors.blue : Colors.green,
      child: Center(
        child: Text(
          "Hello ${index + 1} ",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
      ),
    );
  }

  Widget _dinamikELement(BuildContext context, int index) {
    return Container(
      height: 200.0,
      color: randomColor(),
      child: Center(
        child: Text(
          "Hello ${index + 1}",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
      ),
    );
  }

  Color randomColor() {
    return Color.fromARGB(
        matematika.Random().nextInt(255),
        matematika.Random().nextInt(255),
        matematika.Random().nextInt(255),
        matematika.Random().nextInt(255));
  }
}
