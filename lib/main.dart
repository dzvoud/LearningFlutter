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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Title of App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/img/fluticon.svg",
                // color: Colors.blue
              ),
              // Image.asset('assets/img/pp.png',
              // height: 200 ,
              // width: 200,),
              const Text(
                "Element for body",
                style: TextStyle(
                    fontSize: 42,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Second element for body with too many text for app",
                style: TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              const Padding(padding: EdgeInsets.only(top: 25)),
              ElevatedButton.icon(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.only(left: 20, right: 20)),
                  ),
                  onPressed: () => print("ElevatedButton Pressed: ok !"),
                  label: const Text(
                    "Button",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  icon: const Icon(Icons.check),
                  ),
            ],
          ),
        ));
  }
}
