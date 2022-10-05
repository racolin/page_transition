import 'package:flutter/material.dart';
import 'package:page_transition/screen/blue_screen.dart';
import 'package:page_transition/screen/yellow_screen.dart';

class GreenScreen extends StatelessWidget {
  static const route = '/green';
  const GreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Green')),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green,
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
