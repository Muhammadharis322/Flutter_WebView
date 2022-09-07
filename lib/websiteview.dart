import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebsiteView extends StatelessWidget {
  late WebViewController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MY GITHUB PROFILE"),),
      body: WebView(
        initialUrl: 'https://github.com/Muhammadharis322',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController WebViewController){
          _controller = WebViewController;
        },
      ),
    );
  }
}