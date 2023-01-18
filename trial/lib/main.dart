import 'package:flutter/material.dart';
import 'package:trial/pages/CarList.dart';
import 'package:trial/themes/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            child: Text("CarCom", style: AppStyle.txtRobotoMedium),
            alignment: Alignment.center,
          ),
          leading: Icon(Icons.emoji_transportation),
          actions: <Widget>[Icon(Icons.notifications)],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.engineering), label: "mechanics"),
            BottomNavigationBarItem(
                icon: Icon(Icons.car_repair), label: "Car costumaztion"),
          ],
        ),
        body: Mycars(),
        floatingActionButton: const FloatingActionButton(
          tooltip: 'chat', // used by assistive technologies
          onPressed: null,
          child: Icon(Icons.chat),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TutorialHome extends StatelessWidget {
  const TutorialHome({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    // the major Material Components.
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Example title'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      body: const Center(
        child: Text('Hello, world!'),
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
