import 'package:flutter/material.dart';

class InfoBar extends StatelessWidget {
  const InfoBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: Text(
              '© Europebet 2014-2020. Play to enjoy',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
            child: Text(
              'Website is fully licensed by Law of Georgia, owned and operated by “Chempionebi 111” LLC (ID number: 240420647)',
              style: TextStyle(fontSize: 17, color: Color(0xff606162)),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 27, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'License number 19-06/209',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff606162),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'License number 19-05/323',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff606162),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
