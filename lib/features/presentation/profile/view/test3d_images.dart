import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Test3dImages extends StatefulWidget {
  const Test3dImages({super.key});

  @override
  State<Test3dImages> createState() => _Test3dImagesState();
}

class _Test3dImagesState extends State<Test3dImages> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse('https://sketchfab.com/models/2115f795347b4150ac6369165680e159/embed'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3D Model'),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}