import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Gesture Detector Demo',
      home: MyInteractiveWidget(),
    );
  }
}

class MyInteractiveWidget extends StatefulWidget {
  const MyInteractiveWidget({Key? key}) : super(key: key);

  @override
  State<MyInteractiveWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyInteractiveWidget> {
  final _color = Colors.red;
  BoxShape _shape = BoxShape.rectangle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        decoration: BoxDecoration(
          shape: _shape,
          color: _color,
        ),

        child: GestureDetector(
          onTap: () {
            setState(() {
              _shape == BoxShape.circle
                  ? _shape = BoxShape.rectangle
                  : _shape = BoxShape.circle;
            });
          },
        ),
      ),
    );
  }
}
