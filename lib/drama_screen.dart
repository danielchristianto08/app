import 'package:flutter/material.dart';

class Drama extends StatelessWidget {
  static const routename = '/formdrama';
  const Drama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Positioned"),
      ),
      // body: Stack(
      //   children: <Widget>[
      //     GestureDetector(
      //       onPanUpdate: _showMagnifier,
      //       child: WidgetToMagnify(),
      //     )
      //   ],
      // ),
    );
  }
}
