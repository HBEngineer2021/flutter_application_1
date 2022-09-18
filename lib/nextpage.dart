import "package:flutter/material.dart";

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NextPage"),
      ),
      backgroundColor: Colors.deepPurple,
      body: const Center(),
    );
  }
}
