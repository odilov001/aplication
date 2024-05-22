import 'package:flutter/material.dart';


class Pictures extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return  Column(
    children:
    <Widget>[
      Text(
        "Picture",
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
      IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4.0),
                  color: Colors.green.shade900,
                  child: Column(
                    children: <Widget>[
                      FadeInImage.assetNetwork(
                          placeholder: "assets/images/loading.gif",
                          image:
                          'https://images.unsplash.com/photo-1529850058487-4ce6aa397340?q=80&w=2952&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                      Text(
                        "Jahongir",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Odiov",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4.0),
                  color: Colors.green.shade900,
                  child: Column(
                    children: <Widget>[
                      FadeInImage.assetNetwork(
                          placeholder: 'assets/images/loading.gif',
                          image:
                          'https://images.unsplash.com/photo-1529850058487-4ce6aa397340?q=80&w=2952&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                      Text(
                        "Jahongir",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Odiov",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4.0),
                  padding: EdgeInsets.only(top: 5),
                  color: Colors.green.shade900,
                  child: Column(
                    children: <Widget>[
                      // CircleAvatar(
                      //   backgroundImage: NetworkImage(
                      //     'https://images.unsplash.com/photo-1715449960786-6e6dd955a475?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      //   ),
                      //   backgroundColor: Colors.green.shade400,
                      //   foregroundColor: Colors.black,
                      //   radius: 30.0,
                      // ),
                      FadeInImage.assetNetwork(
                          placeholder: 'assets/images/loading.gif',
                          image:
                          'https://images.unsplash.com/photo-1529850058487-4ce6aa397340?q=80&w=2952&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                      Text(
                        "Jahongir",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Odiov",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
      IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4.0),
                  color: Colors.green.shade900,
                  child: Column(
                    children: <Widget>[
                      FadeInImage.assetNetwork(
                          placeholder: "assets/images/loading.gif",
                          image:
                          'https://images.unsplash.com/photo-1529850058487-4ce6aa397340?q=80&w=2952&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                      Text(
                        "Jahongir",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Odiov",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4.0),
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlutterLogo(
                        size: 80.0,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4.0),
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlutterLogo(
                        size: 80.0,
                        style: FlutterLogoStyle.horizontal,
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
      Container(
        margin: EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
              child: Text(
                "Button 1",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.lime)),
              onPressed: () {
                debugPrint("Button 1 clicked ");
                debugPrint("Button 1 clicked ");
              },
            ),
            ElevatedButton(
              child: Text(
                "Button 2",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.black)),
              onPressed: (){},
            ),
            MaterialButton(
              child: Text('Button 3'),
              onPressed: () {
                debugPrint("Button 3 clicked");
              },
            ),
            ToggleButtons(
              children: <Widget>[
                Icon(Icons.access_alarm),
                Icon(Icons.adb),
                Icon(Icons.add),
              ],
              onPressed: (int index) {
                debugPrint("Toggle $index clicked");
              },
              isSelected: [true, false, true],
            ),
          ],
        ),
      )
    ],
  );
  }

}