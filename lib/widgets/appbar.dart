

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tramera/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          const Icon(
            Icons.camera,
            color: Vx.amber500,
            size: 25,
          ),
          const SizedBox(
            width: 10,
          ),
          "Tramera"
              .text
              .color(Vx.amber500)
              .heightSnug
              .extraBlack
              .xl2
              .make(),
          const SizedBox().expand(),
        ],
      ),
      actions: <Widget>[
        CupertinoButton(
            onPressed: (() {
              Navigator.pushNamed(context, MyRoutes.notifcatonsRoute);
            }),
            child: Icon(
              Icons.notifications_outlined,
              size: 30,
              color: Vx.amber500,
            ).badge(
              color: Vx.amber700,
              size: 14,
            )),
        CupertinoButton(
            onPressed: (() {
              Navigator.pushNamed(context, MyRoutes.searchRoute);
            }),
            child: Icon(
              Icons.search_outlined,
              size: 30,
              color: Vx.amber500,
            )),
        CupertinoButton(
            onPressed: (() {
              Navigator.pushNamed(context, MyRoutes.searchRoute);
            }),
            child: const CircleAvatar(
              foregroundImage: NetworkImage(
                  "https://preview.redd.it/u83c0vcaali31.jpg?auto=webp&s=a71aaa551746325be7ffca80fdcd1c2e47e42856"),
            )),
      ],
    );
  }
}
