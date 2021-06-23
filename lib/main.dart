import 'package:flutter/material.dart';

// Widget nesting stuff, default material UI font and themes
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Memes(),
    ));

// Stateless Widget - State of the widget will not change overtime
class Memes extends StatelessWidget {
  // Initialize variables

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Memes Gif App'),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // Stateful widget
            Image(
              image: NetworkImage(
                  "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg"),
              height: 500.00,
              width: 500.00,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 50, 0),
              child: Container(
                padding: const EdgeInsets.all(0.0),
                width: MediaQuery.of(context).size.width * 0.75,
                height: 80.0,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter the meme gif you want to search',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return value;
                  },
                  autocorrect: true,
                  autofocus: true,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, letterSpacing: 2.00),
                  onFieldSubmitted: (String? text) => {print(text)},
                ),
              ),
            ),
          ],
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
