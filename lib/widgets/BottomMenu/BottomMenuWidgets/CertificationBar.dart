import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CertificationBar extends StatelessWidget {
  const CertificationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10,),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SvgPicture.network(
              'https://cf.europebet.com/prod/content/documents/images/be7f651b-5043-4b1f-9bcc-c2416f4e00c0.svg',
              color: Color(0xfff05a22),
              headers: {},
            ),
          ),
          Expanded(
            flex: 2,
            child: Image.network(
              'https://cf.europebet.com/prod/content/documents/images/9ada184c-ab69-45a5-8554-2645d0a7bc7b.png',
            ),
          ),
          Expanded(
            flex: 2,
            child: Image.network(
              'https://cf.europebet.com/prod/content/documents/images/23c5cc2d-e20f-4f29-8d19-20cc533e8125.png',
            ),
          ),
        ],
      ),
    );
  }
}
