import 'package:flutter/material.dart';
import 'package:Flutter_webview/webview_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _containerColor = Colors.yellow;
  void changeColor() {
    setState(() {
      if (_containerColor == Colors.yellow) {
        _containerColor = Colors.red;
        return;
      }
      _containerColor = Colors.yellow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WebViewContainer(
          'https://flutter-webview.vercel.app/', 'Assignment 1'),
    );
  }
}
