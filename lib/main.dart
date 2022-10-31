import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Title of App"),
        ),
        body: const Center(
          child: Text("Element for body",
            style: TextStyle(
              fontSize: 24,
            ),
            ),
        ),
        ),
    );
  }
}