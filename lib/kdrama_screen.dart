import 'package:flutter/material.dart';
import 'package:minggu4/model/kdrama.dart';

class KdramaScreen extends StatelessWidget {
  static const routeName = '/news_drama';
  const KdramaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kdrama List'),
        ),
        body: ListView.builder(
          itemCount: koreanDramaList.length,
          itemBuilder: (context, index) {
            final KoreanDrama kdrama = koreanDramaList[index];
            return InkWell(
              onTap: () {},
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Image.asset(kdrama.banner),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
