import 'package:evropebet/fonts/eb_icons.dart';
import 'package:flutter/material.dart';

class BottomMenuButtons extends StatefulWidget {
  BottomMenuButtons({Key key}) : super(key: key);

  @override
  _BottomMenuButtonsState createState() => _BottomMenuButtonsState();
}

class _BottomMenuButtonsState extends State<BottomMenuButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => Color(0xff3B3F41)),
              elevation:
                  MaterialStateProperty.resolveWith((states) => 0.3),
            ),
            onPressed: () {},
            icon: Icon(
              Eb.uniE915,
              color: Color(0xfff05a22),
            ),
            label: Text('Live Chat'),
          ),
          ElevatedButton.icon(
            style: ButtonStyle(
              elevation:
                  MaterialStateProperty.resolveWith((states) => 0.3),
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => Color(0xff3B3F41)),
            ),
            onPressed: () {},
            icon: Icon(
              Eb.uniE91A,
              color: Color(0xfff05a22),
            ),
            label: Text('*0909'),
          ),
        ],
      ),
    );
  }
}
