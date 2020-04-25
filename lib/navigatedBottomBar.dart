import 'package:flutter/material.dart';

class AnimatedBottomBar extends StatefulWidget {
  final List<BarItem> barItems;
  final Duration animationDuration;

  AnimatedBottomBar(
      {Key key,
      this.barItems,
      this.animationDuration = const Duration(milliseconds: 500)})
      : super(key: key);

  @override
  _AnimatedBottomBarState createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 18.0,top: 18.0, left: 10.0,right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _buildBarItems(),
        ),
      ),
    );
  }

  List<Widget> _buildBarItems(){
    List<Widget> _barItem = new List();
    for(var item in widget.barItems){
      _barItem.add(
        Row(
          children: <Widget>[
            Icon(item.iconData,color: item.color,),
            SizedBox(width: 4,),
            Text(item.text,style: TextStyle(
              color: item.color,
              fontWeight: FontWeight.w600,
              fontSize: 16.0
            ),)
          ]
        )
      );
    }
    return _barItem;
  }
}

class BarItem {
  String text;
  IconData iconData;
  Color color;
  BarItem({this.text, this.iconData, this.color});
}
