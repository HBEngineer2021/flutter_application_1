import 'package:flutter/material.dart';
import 'package:flutter_application_1/cardview.dart';
import 'package:flutter_application_1/imagecard.dart';
import 'package:flutter_application_1/imagelinks.dart';
import 'package:flutter_application_1/routers.dart';
import 'package:flutter_application_1/firstpage.dart';
import 'package:flutter_application_1/nextpage.dart';
import 'package:flutter_application_1/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        foregroundColor: Colors.white);
    final Routers routers = Routers.shared;
    List<Color> listColors = [
      Colors.blue,
      Colors.grey,
      Colors.blueAccent,
      Colors.greenAccent,
      Colors.green
    ];
    List<String> listTitle = [
      "Flutter1",
      "Flutter2",
      "Flutter3",
      "Flutter4",
      "Flutter5"
    ];
    List<StatelessWidget> listPage = [
      const NextPage(),
      const FirstPage(),
      SecondPage(),
      const NextPage(),
      const FirstPage()
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Let's Flutter World!!"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            for (int i = 0; i < 5; i++)
              CardView(
                  title: listTitle.elementAt(i),
                  colors: listColors.elementAt(i),
                  pressed: () {
                    routers.pushPages(context, listPage.elementAt(i));
                  }),
            ImageCard(
                imageLink: ImageLinks.bisquedoll.path,
                title: "2期おめでとう！！",
                colors: Colors.blue,
                style: style,
                pressed: () {
                  routers.pushPages(context, listPage.elementAt(1));
                })
          ],
        ),
      ),
    );
  }
}
