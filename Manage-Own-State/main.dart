void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Interactive Flutter Demo',
     home: Scaffold(
       appBar: AppBar(
         title: Text('Interactive Flutter Demo'),
       ),
       body: Center(
         child: MyButton(),
       ),
     ),
   );
 }
}

class MyButton extends StatefulWidget {
 MyButton({Key key}) : super(key: key);

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

 Widget build(BuildContext context) {
   return GestureDetector(
     onTap: _handleTap,
     child: Container(
         //add some contents that depend on the state of _active
     ),
   );
 }
}
