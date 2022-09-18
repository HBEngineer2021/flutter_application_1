import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard(
      {super.key,
      required this.imageLink,
      required this.title,
      required this.colors,
      required this.style,
      this.pressed});
  final String imageLink;
  final String title;
  final Color colors;
  final ButtonStyle style;
  final Function()? pressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        width: 300,
        child: Stack(
          children: <Widget>[
            Center(
              child: Image.network(
                imageLink,
                fit: BoxFit.contain,
              ),
            ),
            Center(
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 20, color: colors, fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: const Alignment(0.0, 1.0),
              child: Container(
                margin: const EdgeInsets.only(bottom: 20.0),
                child: ElevatedButton(
                  style: style,
                  onPressed: pressed,
                  child: const Text("onPressed"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
