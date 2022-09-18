import 'package:flutter/material.dart';
import 'package:flutter_application_1/firstpage.dart';
import 'package:flutter_application_1/nextpage.dart';

class SecondPage extends StatelessWidget {
  SecondPage({super.key});

  List<String> titleList = [
    "flutter",
    "swift",
    "java",
    "kotlin",
    "ruby",
    "php",
    "C",
    "C++",
    "C#",
    "typescript",
  ];

  List<StatelessWidget> pageList = [
    const NextPage(),
    const FirstPage(),
    const NextPage(),
    const FirstPage(),
    const NextPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SecondPage"),
      ),
      body: Scrollbar(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: titleList.length,
          itemBuilder: ((context, index) {
            int titleNum = index + 1;
            String titleString = titleList.elementAt(index);
            return Card(
              child: ListTile(
                title: Text("$titleNum．\t$titleString"),
                subtitle: const Text("laugauge"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => pageList.elementAt(index)),
                    ),
                  );
                },
              ),
            );
          }),
        ),
      ),
    );
  }
}
