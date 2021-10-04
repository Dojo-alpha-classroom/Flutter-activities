import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interactive Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Interactive Flutter Demo'),
        ),
        body: const Center(
          child: MyButton(),
        ),
      ),
    );
  }
}

class MyButton extends StatefulWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xff7c94b6),
        ),
        child: Center(
          child: Text(
            _active ? 'BIG' : 'SMALL',
          ),
        ),
        width: _active ? 300 : 150,
        height: _active ? 300 : 150,
      ),
    );
  }
}
