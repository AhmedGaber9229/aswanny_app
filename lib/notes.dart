import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({Key key = const Key("any_key")}) : super(key: key);

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
        initialUrl: "https://www.facebook.com/groups/1029842134053567");
  }
}
