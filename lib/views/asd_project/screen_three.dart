import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // ScreenController().makingPhoneCall();
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(5.0)),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(color: Colors.black),
                  ),
                ),
                child: const Text('Here'),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
