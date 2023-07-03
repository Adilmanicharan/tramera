import 'package:flutter/material.dart';
import 'package:tramera/widgets/appbar.dart';
import 'package:tramera/widgets/drawer.dart';
import 'package:tramera/widgets/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      endDrawer: const MyDrawer(),
      bottomNavigationBar: const MyBottomBar(),
      body: SafeArea(
          child: Column(
        children: const [],
      )),
    );
  }
}