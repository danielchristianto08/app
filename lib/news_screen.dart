import 'package:flutter/material.dart';
import 'package:minggu4/detail_news_screen.dart';
import 'package:minggu4/model/article.dart';

class NewScreen extends StatelessWidget {
  static const routeName = '/news_list';
  const NewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
      ),
      body: FutureBuilder<String>(
          future: DefaultAssetBundle.of(context).loadString('assets/news.json'),
          builder: (context, snapshot) {
            final List<Article> articles = parseArticles(snapshot.data);
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return buildItem(context, articles[index]);
              },
            );
          }),
    );
  }
}

Widget buildItem(BuildContext context, Article article) {
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    leading: Image.network(article.urlToImage, width: 100),
    title: Text(article.title),
    subtitle: Text(article.author),
    onTap: () {
      Navigator.pushNamed(context, DetailNewScreen.routeName,
          arguments: article);
    },
  );
}
