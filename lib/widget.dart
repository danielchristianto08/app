import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  static const routeName = '/mywidget';
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coba Widget'),
      ),
      body: const RawMagnifier(
          size: const Size(150, 150),
          focalPointOffset: Offset.zero,
          magnificationScale: 1,
          decoration: const MagnifierDecoration(),
          child: Text(
            "Halo Widget",
            style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                backgroundColor: Colors.yellow),
          )),
    );
  }
}
