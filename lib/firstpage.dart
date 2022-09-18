import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FirstPage"),
      ),
      body: Center(
        child: Image.network(
            "https://storage.mantan-web.jp/images/2022/09/16/20220916dog00m200092000c/001_size10.jpg"),
      ),
    );
  }
}
