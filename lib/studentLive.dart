import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:sizer/sizer.dart';

class liveFeed extends StatefulWidget {
  @override
  _liveFeedState createState() => _liveFeedState();
}

class _liveFeedState extends State<liveFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Container(
          width: 90.w,
          height: 90.w,
          child: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: 'https://shashanka.codeplait.net/kigston/clip.php',
          ),
        ),
      ),
    );
  }
}
