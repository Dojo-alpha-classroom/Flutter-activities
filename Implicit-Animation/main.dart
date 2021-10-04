import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = const Color(0xffc44545);
    Widget mainSection = Expanded(
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/background.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: SizedBox(
              width: 300,
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.skip_previous, color: color, size: 60),
                      Icon(Icons.play_circle, color: color, size: 100),
                      Icon(Icons.skip_next, color: color, size: 60),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 12),
                    child: const Text(
                      "Chinatown (feat. Bruce Springsteen)",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          color: Colors.white70),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: const Text(
                      "Bleachers, Bruce Springsteen",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: Colors.white70),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
        title: 'Flutter layout demo',
        home: Scaffold(
          body: Row(
            children: [
              const ButtonSection(),
              mainSection,
            ],
          ),
        ));
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = const Color(0xffc44545);
    return Container(
      color: const Color(0xffbfbfbf),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
              child: _buildButtonColumn(color, Icons.home, 'HOME')),
          _buildButtonColumn(color, Icons.settings, 'SETTINGS'),
          _buildButtonColumn(color, Icons.navigation, 'NAVIGATION'),
          _buildButtonColumn(color, Icons.call, 'CALL'),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                );
              },
              child: _buildButtonColumn(color, Icons.library_music, 'MUSIC')),
          _buildButtonColumn(color, Icons.info, 'INFO'),
        ],
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      //mainAxisSize: MainAxisSize.min,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(left: 12, top: 8, right: 12),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: const [
            ButtonSection(),
            Expanded(
              child: Center(
                child: Text("Home"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

