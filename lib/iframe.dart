import 'package:flutter/material.dart';
import 'package:web/web.dart' as web;
import 'dart:ui' as ui;

class WebViewWeb extends StatelessWidget {
  final String url;
  final double width;
  final double height;

  const WebViewWeb({required this.url, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    String htmlId = "flutter_webview_$url";

    // Registra la vista HTML
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
      final iframe = web.document.createElement('iframe') as web.HTMLIFrameElement;
      iframe.src = url;
      iframe.style.border = 'none';
      iframe.style.width = '${width}px';
      iframe.style.height = '${height}px';
      return iframe;
    });

    // Muestra la vista HTML
    return SizedBox(
      width: width,
      height: height,
      child: HtmlElementView(viewType: htmlId),
    );
  }
}

class PantallaCompletaIframe extends StatelessWidget {
  final String url;

  const PantallaCompletaIframe({required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return WebViewWeb(
            url: url,
            width: constraints.maxWidth,
            height: constraints.maxHeight,
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PantallaCompletaIframe(url: 'https://360.amuraone.com/virtualtour/5f1f3688'),
  ));
}