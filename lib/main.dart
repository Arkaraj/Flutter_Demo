import 'package:flutter/material.dart';

// Widget nesting stuff, default material UI font and themes
void main() => runApp(MaterialApp(
  home: memes(),
));

// Stateless Widget - State of the widget will not change overtime
class memes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Flutter Demo'),
      centerTitle: true,
      backgroundColor: Colors.blue[400],
    ),
    body: Center(
      child: Text(
        'Meme API App',
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'Karla',
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
          color: Colors.grey[600],
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.bolt), // Text("Click me")
      onPressed: () => print("clicked"),
      backgroundColor: Colors.blue[400],
    ),
  );
  }
}