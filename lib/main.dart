import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color renk = Colors.red;
  double size = 40.0;
  FontWeight weight = FontWeight.normal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AnimatedDefaultTextStyle Widget")),
      body: Center(
        child: AnimatedDefaultTextStyle(
          style: TextStyle(color: renk, fontSize: size, fontWeight: weight),
          duration: Duration(milliseconds: 2000),
          child: Text("Merhaba"),
          curve: Curves.bounceInOut,
          onEnd: () {
            print("animasyon bitti.");
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.flip),
        onPressed: () {
          setState(() {
            renk = Colors.green;
            size = 70;
            weight = FontWeight.bold;
          });
        },
      ),
    );
  }
}
