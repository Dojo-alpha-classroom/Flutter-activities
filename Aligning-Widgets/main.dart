import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
            child: Container (
              color: Colors.blue[200],
              child: Row (
                //mainAxisSize: MainAxisSize.min,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network('https://picsum.photos/id/1018/200'),
                    Image.network('https://picsum.photos/200'),
                  ]
              ),
            )
        ),
      ),
    );
  }
}
