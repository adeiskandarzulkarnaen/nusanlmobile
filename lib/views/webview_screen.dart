
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  final String url;
  const WebViewScreen({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final webViewController = WebViewController()..loadRequest(Uri.parse(url));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: WebViewWidget(
        controller: webViewController,
      ),
    );
  }
}