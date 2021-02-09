import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container'),
        ),
        body: Container(
          margin: EdgeInsets.all(50.0),
          width: 400.0,
          height: 500.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('http://bit.ly/flutter_tiger'),
              repeat: ImageRepeat.repeatX,
            ),
            color: Colors.orange,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
        ),
      ),
    );
  }
}
