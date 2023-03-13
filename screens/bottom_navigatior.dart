import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Text("Home"),
    const Text("search"),
    const Text("Ticket"),
    const Text("Person")
  ];

  void _onItemTapped(int index){
    _selectIndex=index;
    setState(() {
      
    });

  }
  @override
  Widget build(BuildContext context) {
    print('${_selectIndex}');
    return Scaffold(
      body: Center(child: _widgetOptions[_selectIndex]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
          showSelectedLabels: false,
          unselectedItemColor: const Color(0xff526480),
          elevation: 10,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          backgroundColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: ""),
          ]),
    );
  }
}
