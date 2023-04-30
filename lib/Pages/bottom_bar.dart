import 'package:flutter/material.dart';
import 'package:practice_ui/Pages/home.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedindex = 0;
  static final List<Widget> widgetOpt = <Widget>[
    const HomeScreen(),
    const Text(
      "This feature is Under Development",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    const Text(
      "This feature is Under Development !!",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  ];

  void onitemtap(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOpt[selectedindex], // this will call are widgetopt.
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        onTap: onitemtap,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined), label: "Discover",),
          BottomNavigationBarItem(
              icon: Icon(Icons.stacked_bar_chart), label: "Stats"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        backgroundColor: Color(0xff1C2031),
      ),
    );
  }
}
