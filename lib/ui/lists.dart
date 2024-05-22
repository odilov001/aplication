import 'package:flutter/material.dart';

class Lists extends StatelessWidget {

  List<int> listNumbers = List.generate(10, (index) => index);
  List<String> listText = List.generate(10, (index) => "Country - $index");

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: listNumbers
            .map(
              (idx) => Column(
                children: <Widget>[
                  Container(
                    child: Card(
                        color: Colors.blueAccent,
                        margin: EdgeInsets.all(20.0),
                        elevation: 20.0,
                        child: ListTile(
                          leading: CircleAvatar(
                            child: Icon(Icons.face_2_outlined),
                            radius: 20.0,
                          ),
                          title: Text(
                            "Hello, I'm John - $idx",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            listText[idx],
                            style: TextStyle(color: Colors.black45),
                          ),
                          trailing: Icon(
                            Icons.circle_notifications,
                            color: Colors.white,
                          ),
                        )),
                  ),
                  const Divider(
                    color: Colors.blueAccent,
                    height: 10.0,
                    thickness: 2.0,
                  ),
                ],
              ),
            )
            .toList());
  }
}
