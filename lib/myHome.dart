import 'package:flutter/material.dart';
import 'package:transport_ui/myListView.dart';
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
      color: Colors.yellow[800],
    ),
  ];

  MyHome({Key key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int selectedItem = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 0,left: 0),
          child: MyListView(),
        ),  
      ),
      bottomNavigationBar: AnimatedBottomBar(
        barItems: widget.barItems,
        animationDuration: const Duration(milliseconds: 300),
        onTapBar: (index){
          setState(() {
            selectedItem = index;
            // print(selectedItem);
          });
        },
      ),
    );
  }
}
