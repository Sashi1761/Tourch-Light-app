import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class TourchLite extends StatefulWidget {
  const TourchLite({super.key});

  @override
  State<TourchLite> createState() => _TourchLiteState();
}

class _TourchLiteState extends State<TourchLite> {
  final bgColor = const Color(0xff2C3333);
  final textColor = const Color(0xffE7F6F2);
  var isActive = false;
  var controller = TorchController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        isActive
                            ? 'assets/tourchon.jpg'
                            : 'assets/tourchof.jpg',
                        width: 200,
                        height: 200,
                        color: isActive ? null : textColor.withOpacity(0.2),
                      ),
                      SizedBox(
                        height: size.height * 0.1,
                      ),
                      CircleAvatar(
                        minRadius: 30,
                        maxRadius: 45,
                        child: Transform.scale(
                          scale: 1.5,
                          child: IconButton(
                            onPressed: () {
                              controller.toggle();
                              isActive = !isActive;
                              setState(() {});
                            },
                            icon: const Icon(Icons.power_settings_new),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Text(
              'Developed By Shashi Puri',
              style: TextStyle(color: Color(0xffE7F6F2), fontSize: 18.0),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
          ],
        ));
  }
}
