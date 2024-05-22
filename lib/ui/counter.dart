// import 'package:app/ui/myApp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      title: "Material App",
      home: MyHomePage(title: "My Home Page"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  int count = 0;

  MyHomePage({required this.title}) {}



  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lime,
        onPressed: () {},
        child: Icon(
          Icons.ac_unit,
          size: 40.0,
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Click Button",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                )),
            Text(
              '${widget.count}',
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: widget.count <= 0 ? Colors.red : Colors.green
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _handleIncrement();
                  },
                  child: Icon(Icons.add),
                  style: ButtonStyle(
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.green),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.all(20)),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _handleDecrement();
                  },
                  child: Text(
                    "-",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                  style: ButtonStyle(
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.red),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(10))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  void _handleIncrement() {
    setState((){
      widget.count++;
    });

  }
  void _handleDecrement(){
    setState(() {
      widget.count--;
    });
  }
}
