import 'package:flutter/material.dart';
import 'package:page_transition/screen/blue_screen.dart';
import 'package:page_transition/screen/green_screen.dart';

class YellowScreen extends StatelessWidget {
  static const route = '/yellow';
  const YellowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Yellow')),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.yellow,
        alignment: Alignment.center,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, GreenScreen.route);
              },
              child: const Text('To Green'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, BlueScreen.route);
              },
              child: const Text('To Blue'),
            ),
          ],
        ),
      ),
    );
  }
}
