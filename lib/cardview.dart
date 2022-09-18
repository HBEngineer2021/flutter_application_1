import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView(
      {super.key,
      required this.title,
      required this.colors,
      required this.pressed});
  final String title;
  final Color colors;
  final Function()? pressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        height: 300,
        width: 300,
        color: colors,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(fontSize: 40),
            ),
            TextButton(
              onPressed: pressed,
              child: const Text(
                "onpressed!!",
                style: TextStyle(fontSize: 40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
