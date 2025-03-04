import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget {
  final String url;

  const WebViewPage({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WebViewPlatform.instance != null;
    return Scaffold(
      appBar: AppBar(
        title: Text("360", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: WebViewWidget(
        controller: WebViewController()
          ..loadRequest(Uri.parse(url)) // Carga la URL proporcionada
          ..setJavaScriptMode(JavaScriptMode.unrestricted), // Habilita JavaScript
      ),
    );
  }
}