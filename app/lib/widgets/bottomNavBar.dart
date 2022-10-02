import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavBar extends StatefulWidget {
  String selectedLabel = 'HOME';
  BottomNavBar({ required this.selectedLabel});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List navBarItems = [{
  }];
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: 100,

   
      child: Row(
        children: [
          (widget.selectedLabel == 'HOME')?
          NavBarItem(label: 'HOME', selected: true)
          :NavBarItem(label: 'HOME', icon: Icons.home_outlined), 
          NavBarItem(label: 'EXPLORE', icon: Icons.explore_outlined),
          NavBarItem(label: 'ORDERS', icon: Icons.shop_outlined),
          NavBarItem(label: 'PROFILE', icon: Icons.settings_outlined),

        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  String label;
  IconData? icon;
  bool selected;
  NavBarItem({
    required this.label, 
    this.icon,
    this.selected = false,
  });
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      height: 100,
      width: width*0.25,
      decoration: BoxDecoration(
        color: (selected) ? const Color(0xFF1d1b1b) : const Color(0xFF020203), 
        border: Border(
        right: BorderSide(
          color: Theme.of(context).primaryColor
        ),
        top: BorderSide(
          color: Theme.of(context).primaryColor
        ),
        left: BorderSide(
          color: Theme.of(context).primaryColor
        ),)
      ),
      child: (selected) ? Center(
              child: Text(label, style: TextStyle(
                color: Theme.of(context).primaryColor, 
                fontSize: 20
              ),), )
              :
              Center(
              child: Icon(icon, color: Colors.white, size: 30))
    );
  }
}
