import 'package:flutter/material.dart';
import 'package:tramera/pages/downloads.dart';
import 'package:tramera/pages/homepage.dart';
import 'package:velocity_x/velocity_x.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({super.key});

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int pageIndex = 0;

  get pages => [
        const HomePage(),
      
        const DownloadsPage(),
        
       
      ];

  void _onItemTapped(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: context.cardColor,
      items: const <BottomNavigationBarItem>[
      
         BottomNavigationBarItem(
          icon: Icon(
            Icons.camera_outlined,
            size: 25,
          ),
          label: 'camera',
        ),
         BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            size: 20,
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.message_outlined,
            size: 20,
          ),
          label: 'charts',
        ),
       
        BottomNavigationBarItem(
          icon: Icon(
            Icons.mediation_rounded,
            size: 25,
          ),
          label: 'media',
        ),
      ],
      currentIndex: pageIndex,
      selectedItemColor: Vx.yellow700,
      unselectedItemColor: Vx.yellow400,
      onTap: _onItemTapped,
    );
  }
}
