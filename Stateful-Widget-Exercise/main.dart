import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: "volume button app",
     home: Scaffold(
       appBar: AppBar(title: Text("volume button app")),
       body: Center(
         child: MyStatefulWidget(),
       ),
     ),
   );
 }
}

double _volume = 0.0;

class MyStatefulWidget extends StatefulWidget {
 const ({Key? key}) : super(key: key);
  
 @override
 State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
 @override
 Widget build(BuildContext context) {
   return Column(
                //write your code here
   );
 }
}
