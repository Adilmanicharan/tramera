import 'package:flutter/material.dart';
import 'package:tramera/pages/camera.dart';
import 'package:tramera/pages/charts.dart';
import 'package:tramera/pages/downloads.dart';
import 'package:tramera/pages/homepage.dart';
import 'package:tramera/pages/notifi.dart';
import 'package:tramera/pages/search.dart';
import 'package:tramera/theams.dart';
import 'package:tramera/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const HomePage(),
        MyRoutes.CameraRoute: (context) => const camera(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.downloadsRoute: (context) => const DownloadsPage(),
        MyRoutes.searchRoute: (context) => const SearchPage(),
        MyRoutes.notifcatonsRoute: (context) => const NotificationPage(),
        MyRoutes.ChartRoute: (context) => const Charts(),
      },
    );
  }
}
