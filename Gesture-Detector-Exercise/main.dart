import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter layout demo',
        home: Scaffold(
          body: MyBox(),
        ));
  }
}

class MyBox extends StatefulWidget {
  const MyBox({Key? key}) : super(key: key);

  @override
  _MyBoxState createState() => _MyBoxState();
}

class _MyBoxState extends State<MyBox> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        height: 100,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightBlueAccent,
        ),
        child: Text("Change Color"),
      ),
    );
  }
}
