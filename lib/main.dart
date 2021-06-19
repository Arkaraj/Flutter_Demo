import 'package:flutter/material.dart';

// Widget nesting stuff, default material UI font and themes
void main() => runApp(MaterialApp(
      home: memes(),
    ));

// Stateless Widget - State of the widget will not change overtime
class memes extends StatelessWidget {
  final ButtonStyle textButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    minimumSize: Size(88, 44),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    backgroundColor: Colors.amber,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),
      body: Column(
        // like Flex/Flexboxes
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[Text('Hello'), Text('World')],
          ),
          Container(
            child: Text('Flutter Demo App'),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 200.0, vertical: 20.0),
            child: TextButton(
              onPressed: () => print('clicked genrate button'),
              child: Text('Generate Memes'),
              style: textButtonStyle,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.bolt), // Text("Click me")
        onPressed: () => print("clicked"),
        backgroundColor: Colors.blue[400],
      ),
    );
  }
}
