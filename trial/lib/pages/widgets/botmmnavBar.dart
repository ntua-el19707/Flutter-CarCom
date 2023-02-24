import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavBarBtm extends StatefulWidget {
  const NavBarBtm({super.key, required this.index});
  final index;
  @override
  State<NavBarBtm> createState() => _NavBarBtmState();
}

class _NavBarBtmState extends State<NavBarBtm> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.engineering), label: "mechanics"),
        BottomNavigationBarItem(
            icon: Icon(Icons.car_repair), label: "Car costumaztion"),
      ],
      currentIndex: widget.index,
      onTap: (value) {
        if (value == 0) {
          Navigator.pushNamed(context, '/');
        } else if (value == 1) {
          Navigator.pushNamed(context, '/Mechanic');
        } else if (value == 2) {
          Navigator.pushNamed(context, '/ar');
        }
      },
    );
  }
}
