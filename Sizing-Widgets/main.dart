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
          child: Row(
              children: [
                Expanded(
                    child: Column(
                        children: [
                          Image.network('https://i.imgur.com/iv4YSmO.jpeg'),
                          Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: const Text(
                              'Cute Dog',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ]
                    )
                ),
                Expanded(
                  child: Image.network('https://i.imgur.com/iv4YSmO.jpeg'),
                ),
                Expanded(
                  child: Image.network('https://i.imgur.com/iv4YSmO.jpeg'),
                ),
                Expanded(
                  flex: 2,
                  child: Image.network('https://i.imgur.com/iv4YSmO.jpeg'),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
