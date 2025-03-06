import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class WebViewPage extends StatelessWidget {
  final String url;

  const WebViewPage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("360", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
        ),
      body: WebViewWidget(
      controller: WebViewController()
      ..loadRequest(Uri.parse(url))
      ..setJavaScriptMode(JavaScriptMode.unrestricted),
      ),
    );
  }
}