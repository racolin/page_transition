import 'package:flutter/material.dart';
import 'package:page_transition/screen/green_screen.dart';
import 'package:page_transition/screen/yellow_screen.dart';

class BlueScreen extends StatelessWidget {
  static const route = '/blue';
  const BlueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Blue')),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, YellowScreen.route);
              },
              child: const Text('To Yellow'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, GreenScreen.route);
              },
              child: const Text('To Green'),
            ),
          ],
        ),
      ),
    );
  }
}
