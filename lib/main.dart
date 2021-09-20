// for dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app',
      // color sample
      theme: ThemeData(primarySwatch: Colors.blue), // Theme data
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Sample'),
      ),
      body: Center(
        child: Column(
          children: const [Text('Hi'), Text('Hi'), Text('Hi')],
        ),
      ),
    );
  }
}
