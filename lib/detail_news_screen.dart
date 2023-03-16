import 'package:flutter/material.dart';
import 'package:minggu4/model/article.dart';
import 'package:minggu4/more_news.dart';

class DetailNewScreen extends StatelessWidget {
  static const routeName = '/detail_news_list';
  final Article article;
  const DetailNewScreen({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(article.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(article.urlToImage),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(article.description),
                    const Divider(color: Colors.grey),
                    Text(
                      article.title,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    const Divider(color: Colors.grey),
                    Text('Date: ${article.publishedAt}'),
                    const SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MoreNewScreen.routeName,
                              arguments: article);
                        },
                        child: const Text('more...'))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
