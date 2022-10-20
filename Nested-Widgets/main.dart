import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Nested widgets demo',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Nested widgets demo'),
            ),
            body: SizedBox(
                width: 300,
                height: 300,
                child: Column(children: [
                  Container(height: 100, width: 300, color: const Color(0xffcc5f4a)),
                  Row(children: [
                    Container(height: 200, width: 100, color: const Color(0xffb6d7a8)),
                    Container(height: 200, width: 100, color: const Color(0xffa4c2f4)),
                    Container(height: 200, width: 100, color: const Color(0xffffe599))
                  ])
                ]))));
  }
}
