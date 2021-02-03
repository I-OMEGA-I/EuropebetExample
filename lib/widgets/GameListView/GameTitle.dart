import 'package:flutter/material.dart';

class GameTitle extends StatelessWidget {
  final Icon titleIcon;
  final String titleText;
  final Function sectionEnterCallback;

  GameTitle({@required this.titleIcon, @required this.titleText, @required this.sectionEnterCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: this.titleIcon,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    this.titleText,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              'assets/images/return.png',
              width: 17,
            ),
          )
        ],
      ),
    );
  }
}
