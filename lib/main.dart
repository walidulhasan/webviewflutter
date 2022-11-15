import 'dart:async'; // Add this import

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart'; // Add this import back

import 'src/navigation_controls.dart'; // Add this import
import 'src/web_view_stack.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WebViewApp(),
    ),
  );
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  final controller =
      Completer<WebViewController>(); // Instantiate the controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RCM'),
        // Add from here ...
        actions: [
          NavigationControls(controller: controller),
        ],
        // ... to here.
      ),
      body: WebViewStack(controller: controller), // Add the controller argument
    );
  }
}
