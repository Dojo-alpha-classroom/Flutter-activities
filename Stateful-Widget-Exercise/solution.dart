import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "volume button app",
      home: Scaffold(
        appBar: AppBar(title: const Text("volume button app")),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

double _volume = 0.0;


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 75,
              icon: const Icon(Icons.volume_down),
              tooltip: 'Decrease volume by 10',
              onPressed: () {
                setState(() {
                  _volume == 0 ? null :_volume -= 10;
                });
              },
            ),
            IconButton(
              iconSize: 75,
              icon: const Icon(Icons.volume_up),
              tooltip: 'Increase volume by 10',
              onPressed: () {
                setState(() {
                  _volume == 100 ? null : _volume += 10;
                });
              },
            ),
          ],
        ),
        Text('Volume : $_volume'),
      ],
    );
  }
}

