import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SecondPage"),
      ),
      body: Scrollbar(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: ((context, index) {
            return Card(
              child: ListTile(
                title: Text("$index"),
              ),
            );
          }),
        ),
      ),
    );
  }
}
