import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TermsWebviewWidget extends StatelessWidget {
  String title;
  String url;
  TermsWebviewWidget({super.key, required this.title, required this.url});

  WebViewController? _webViewController;

  @override
  Widget build(BuildContext context) {
    _webViewController = WebViewController()
      ..loadRequest(Uri.parse(url))
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: WebViewWidget(controller: _webViewController!),
    );
  }
}
