import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colorful Screens'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlueScreen(),
                  ),
                );
              },
              child: Text('TELA AZUL'),
            ),
            SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GreenScreen(),
                  ),
                );
              },
              child: Text('TELA VERDE'),
            ),
            SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlackScreen(),
                  ),
                );
              },
              child: Text('TELA PRETA'),
            ),
          ],
        ),
      ),
    );
  }
}

class BlueScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('TELA AZUL'),
      ),
    );
  }
}

class GreenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('TELA VERDE'),
      ),
    );
  }
}

class BlackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('TELA PRETA'),
      ),
    );
  }
}