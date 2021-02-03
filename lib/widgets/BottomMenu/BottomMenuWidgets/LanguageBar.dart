import 'package:flutter/material.dart';

class LanguageBar extends StatefulWidget {
  @override
  _LanguageBarState createState() => _LanguageBarState();
}

class _LanguageBarState extends State<LanguageBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: 150,
      height: 40,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 25,
              height: 25,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(100)),
              child: Image.asset('assets/images/en.png'),
            ),
            Text(
              'English',
              style: TextStyle(fontSize: 18),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Color(0xff7D7D7D),
            )
          ],
        ),
      ),
    );
  }
}
