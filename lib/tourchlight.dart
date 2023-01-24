import 'package:flutter/material.dart';

class TourchLite extends StatefulWidget {
  const TourchLite({super.key});

  @override
  State<TourchLite> createState() => _TourchLiteState();
}

class _TourchLiteState extends State<TourchLite> {
  final bgColor = const Color(0xff2C3333);
  final textColor = const Color(0xffE7F6F2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: const Text(
            'Torch Light',
            style: TextStyle(color: Color(0xffE7F6F2)),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(),
            )
          ],
        ));
  }
}
