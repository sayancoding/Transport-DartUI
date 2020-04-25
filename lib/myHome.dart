import 'package:flutter/material.dart';
import 'package:transport_ui/navigatedBottomBar.dart';

class MyHome extends StatefulWidget {
  final List<BarItem> barItems = [
    BarItem(
      text: "Home",
      iconData: Icons.home,
      color: Colors.blueAccent,
    ),
    BarItem(
      text: "Location",
      iconData: Icons.location_on,
      color: Colors.redAccent,
    ),
    BarItem(
      text: "Search",
      iconData: Icons.search,
      color: Colors.teal[500],
    ),
    BarItem(
      text: "Profile",
      iconData: Icons.person,
      color: Colors.yellow[700],
    ),
  ];

  MyHome({Key key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Text("HomeContent"),
      )),
      bottomNavigationBar: AnimatedBottomBar(
        barItems: widget.barItems,
        animationDuration: const Duration(milliseconds: 1000),
      ),
    );
  }
}
