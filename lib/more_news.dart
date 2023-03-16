import 'package:flutter/material.dart';
import 'package:minggu4/model/article.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MoreNewScreen extends StatelessWidget {
  static const routeName = '/more_news';
  final Article article;
  const MoreNewScreen({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      // body: WebView(
      //   initialUrl: article.url,
      // )
    );
  }
}
