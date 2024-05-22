import 'package:Paralax_Images/ui/CollapsableToolBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
            // .copyWith(scaffoldBackgroundColor: Colors.blue.shade900),
      home: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.blue.shade900,
          title: const Text(
            "Lists",
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
        ),
        body: CollapsableToolBar(),
      ),
    );
  }
}




