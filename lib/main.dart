import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Title of App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                SvgPicture.asset("assets/img/fluticon.svg",
                // color: Colors.blue
                ),
                Image.asset('assets/img/pp.png',
                height: 200 ,
                width: 200,),
                const Text(
                  "Element for body",
                  style: TextStyle(
                    fontSize: 42,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold
                  ),
                ),
                const Text("Second element for body with too many text for app",
                style: TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
                )
              ],
            ),
        )
      ),
    );
  }
}
