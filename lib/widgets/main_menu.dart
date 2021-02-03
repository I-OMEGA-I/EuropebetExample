import 'package:evropebet/Model/Menu_Model/MainMenuItemModel.dart';
import 'package:evropebet/fonts/eb_icons.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  ScrollController _scrollController = ScrollController();

  List<MainMenuItemModel> _listItems = [
    MainMenuItemModel(
      icon: Eb.Home,
      title: 'Home',
      isSelected: true,
    ),
    MainMenuItemModel(
      icon: Eb.Sport,
      title: 'Sport',
      isSelected: false,
    ),
    MainMenuItemModel(
      icon: Eb.Live,
      title: 'Live',
      isSelected: false,
    ),
    MainMenuItemModel(
      icon: Eb.jeckpot,
      title: 'Slots',
      isSelected: false,
    ),
    MainMenuItemModel(
      icon: Eb.livebet,
      title: 'Casion',
      isSelected: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xff25292b),
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
           onTap: () {
             _listItems.forEach((element) { 
                element.isSelected = false;
              });

              setState(() {
                   _listItems[index].isSelected = true;
              });
           },
            child: Container(
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 23, vertical: 8),
              child: Column(
                children: [
                  Icon(
                    _listItems[index].icon,
                    color: _listItems[index].isSelected
                        ? Color(0xfff05a22)
                        : Colors.white,
                  ),
                  Text(
                    _listItems[index].title,
                    style: TextStyle(
                      color: _listItems[index].isSelected
                          ? Color(0xfff05a22)
                          : Colors.white,
                    ),
                  )
                ],
              ),
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: _listItems.length,
        physics: BouncingScrollPhysics(),
        controller: _scrollController,
      ),
    );
  }
}
