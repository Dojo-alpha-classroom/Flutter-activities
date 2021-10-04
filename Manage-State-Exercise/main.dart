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
          child: // MyButton(),
        ),
      ),
    );
  }
}




//The code below can go into a stateful widget managin its own state or a stateless widget with a parent widget to manage the state.

/*
    return GestureDetector(
      // onTap: _handleTap,
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
*/
