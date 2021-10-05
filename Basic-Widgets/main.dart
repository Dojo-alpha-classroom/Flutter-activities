import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
            Container(
              width: 100,
              height: 100,
              color: Colors.grey,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            )
          ],
        )
      ),
    );
  }
}
