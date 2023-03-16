import 'package:flutter/material.dart';
import 'package:minggu4/detail_news_screen.dart';
import 'package:minggu4/kdrama_screen.dart';
import 'package:minggu4/model/article.dart';
import 'package:minggu4/more_news.dart';
import 'package:minggu4/news_screen.dart';
import 'package:minggu4/widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New Apps',
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      theme: ThemeData(
        //   // This is the theme of your application.
        //   //
        //   // Try running your application with "flutter run". You'll see the
        //   // application has a blue toolbar. Then, without quitting the app, try
        //   // changing the primarySwatch below to Colors.green and then invoke
        //   // "hot reload" (press "r" in the console where you ran "flutter run",
        //   // or simply save your changes to "hot reload" in a Flutter IDE).
        //   // Notice that the counter didn't reset back to zero; the application
        //   // is not restarted.
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: MyWidget.routeName,
      routes: {
        MoreNewScreen.routeName: (context) => MoreNewScreen(
            article: ModalRoute.of(context)?.settings.arguments as Article),
        NewScreen.routeName: (context) => NewScreen(),
        DetailNewScreen.routeName: (context) => DetailNewScreen(
            article: ModalRoute.of(context)?.settings.arguments as Article),
        KdramaScreen.routeName: (context) => const KdramaScreen(),
        MyWidget.routeName: (context) => const MyWidget(),
      },
    );
  }
}
