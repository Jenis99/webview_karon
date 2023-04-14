import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webview_example extends StatefulWidget {

  @override
  State<webview_example> createState() => _webview_exampleState();
}

class _webview_exampleState extends State<webview_example> {
  final WebViewController _controller = WebViewController()..loadRequest(Uri.parse("https://karoninfotech.com"));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TutorialKart - Flutter WebView"),
        ),
        body:  WebViewWidget(controller: _controller),
        );
  }
}