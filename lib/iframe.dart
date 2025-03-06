import 'package:flutter/material.dart';
import 'package:web/web.dart' as web;
import 'dart:ui' as ui;

class IframeWidget extends StatelessWidget {
  final String url;
  final double width;
  final double height;

  const IframeWidget({required this.url, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    String htmlId = "flutter_webview_$url";
  
    // Registra la vista HTML
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
      final iframe = web.document.createElement('iframe') as web.HTMLIFrameElement;
      iframe.src = url;
      iframe.style.border = 'none';
      iframe.style.width = '100%';
      iframe.style.height = '100%';
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

class WebAppView extends StatelessWidget {
  final String url;

  const WebAppView({required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("360", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
        ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return IframeWidget(
            url: url,
            width: constraints.maxWidth,
            height: constraints.maxHeight,
          );
        },
      ),
    );
  }
}