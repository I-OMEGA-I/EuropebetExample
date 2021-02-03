import 'package:evropebet/widgets/BottomMenu/BottomMenuWidgets/InfoBar.dart';
import 'package:evropebet/widgets/BottomMenu/BottomMenuWidgets/LanguageBar.dart';
import 'package:evropebet/widgets/BottomMenu/BottomMenuWidgets/SelectionBar.dart';
import 'package:flutter/material.dart';

import 'BottomMenuWidgets/BottomBarLine.dart';
import 'BottomMenuWidgets/BottomMenuButtons.dart';
import 'BottomMenuWidgets/CertificationBar.dart';

class BottomMenu extends StatefulWidget {
  @override
  _BottomMenuState createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: Color(0xff25292B),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(13),
          topRight: Radius.circular(13),
        ),
      ),
      child: Column(
        children: [
          LanguageBar(),
          BottomMenuButtons(),
          SelectionBar(title: 'Products'),
          BottomBarLine(),
          SelectionBar(title: 'Europebet.com'),
          BottomBarLine(),
          SelectionBar(title: 'Help'),
          BottomBarLine(),
          SelectionBar(title: 'Follow us'),
          BottomBarLine(),
          CertificationBar(),
          BottomBarLine(),
          InfoBar(),
        ],
      ),
    );
  }
}
