import 'package:flutter/material.dart';
import 'package:tramera/widgets/appbar.dart';
import 'package:tramera/widgets/drawer.dart';
import 'package:tramera/widgets/navbar.dart';
class DownloadsPage extends StatelessWidget {
  const DownloadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),

      bottomNavigationBar: MyBottomBar(),
      endDrawer: MyDrawer(),
    );
  }
}