// import 'package:app/ui/cards.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green.shade700,
            title: Text(
              "Flutter lesson",
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint("Button clicked");
            },
            backgroundColor: Colors.green.shade600,
            child: Icon(
              Icons.apps,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          // body:  Pictures()
      ));
  }

}