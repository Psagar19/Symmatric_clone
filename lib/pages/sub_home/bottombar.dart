import 'package:flutter/material.dart';
import 'package:symmatric/pages/sub_home/post.dart';
import 'package:symmatric/pages/sub_home/profile/profile.dart';

import 'main/main_page.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  int pageIndex = 0;

  List<Widget> _screens() => [
    MainPage(),
    CreatePost(),
    Profile(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens()[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.pink.shade800,
        items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: ''),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline),
            activeIcon: Icon(Icons.add_circle),
          label: ''
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          activeIcon: Icon(Icons.person),
          label: ''
        )
      ],
      currentIndex: pageIndex,
        onTap: (int index) {
        setState(() {
          pageIndex = index;
        });
        },
      ),
    );
  }
}
