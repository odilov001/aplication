import 'package:flutter/material.dart';

class GridList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // scrollDirection: Axis.horizontal,
      // reverse: true,
      itemCount: 100,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int idx) {
        return  GestureDetector(
          child:  Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.blueAccent,
                    width: 5.0,
                    style: BorderStyle.solid
                ),
                boxShadow: [new BoxShadow(
                    color: Colors.blue.shade900,
                    offset: new Offset(10.0, 10.0),
                    blurRadius: 50
                ),],
                shape: BoxShape.circle,
                // borderRadius: new BorderRadius.circular(10),
                color: Colors.deepPurple[100 * ((idx + 1) % 6)],
                gradient: LinearGradient(
                  colors: [
                    Colors.blueAccent.shade700,
                    Colors.black,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                image: DecorationImage(
                    image: AssetImage("assets/images/image.jpg"),
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter)),
            child: Text(
              "Hello Flutter $idx",
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

          ),
          onTap: ()=> print("Hello Flutter $idx"),
          onDoubleTap: () => print("Hello Double Tap $idx"),
          onLongPress: () => print("Hello Long Press $idx"),
          onHorizontalDragStart: (e) => print("Hello Event $e"),
        );

      },
    );
  }
}
