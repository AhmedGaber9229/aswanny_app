import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key key = const Key("any_key")}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _buildWebView(),
      ),
    );
  }

  Widget _buildWebView() {
    return WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: "https://aswanny.com/");
  }
}
