import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Styling in Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Text Styling App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void snackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('You clicked the button!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Flutter Text Styling',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              'Experiment with text styles',
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: snackBar,
              child: const Text('Click Me'),
            ),
            const SizedBox(height: 10),
            const Wrap(
              children: [
                Text(
                  'Welcome to ',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Flutter!',
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                )
              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
