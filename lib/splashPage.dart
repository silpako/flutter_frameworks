import 'package:flutter/material.dart';

void main() {
  // to run an app
  // theme is material app
  runApp(MaterialApp(
    // default theme our flutter app
    debugShowCheckedModeBanner: false,
    home: SplashPage(), // initial page to be launched while running an app
  ));
}

class SplashPage extends StatelessWidget {
  @override
  // to create our widget tree we use build function.
  Widget build(BuildContext context) {
    // BuildContext - used to locate widgets on the widget tree and monitor.
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite,size: 50,color: Colors.red,),
                Text("Sweet Love")
              ],
            )));
  }
}
