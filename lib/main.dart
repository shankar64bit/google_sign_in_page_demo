// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:signin_demo/home_page.dart';
import 'package:signin_demo/profile_page.dart';

/////////////////////////////////////////////////MAIN
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: root(),
    ));

/////////////////////////////////////////////////STATELESS WIDGET
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(),
    );
  }
}

///////////////////////////////////////////////STATEFULL WIDGET
class root extends StatefulWidget {
  const root({super.key});

  @override
  State<root> createState() => _rootState();
}

class _rootState extends State<root> {
  int currentPage = 0;
  List<Widget> pages = [Home_page(), Profile_page()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
        ),
        body: pages[currentPage],
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('floating action button');
          },
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected: (int index) {
            setState(() {
              currentPage = index;
            });
          },
          selectedIndex: currentPage,
        ));
  }
}

///////////////////////////////////////////////////END