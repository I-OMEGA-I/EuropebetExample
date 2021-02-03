
import 'package:evropebet/widgets/BottomMenu/BottomMenuWidgets/BottomBarLine.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SelectionBar extends StatefulWidget {
  final String title;

  SelectionBar({@required this.title});

  @override
  _SelectionBarState createState() => _SelectionBarState();
}

class _SelectionBarState extends State<SelectionBar>
    with TickerProviderStateMixin {
  List<String> items = ['test', 'test'];
  double _mainDropDownHeight = 55;
  bool isCollapsed = false;
  AnimationController _iconController;



  @override
  void initState() {
    super.initState();
    _iconController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 450),
    );
  }

  List<Widget> _renderDropDownItems({List<String> items}) {
    return items.map((e) {
      return Column(
        children: [
          Container(
            height: 55,
            width: double.infinity,
            child: Text(e),
            alignment: Alignment.centerLeft,
          ),
          BottomBarLine(),
        ],
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: _mainDropDownHeight,
      margin: EdgeInsets.symmetric(horizontal: 14),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        // onTap: () {
        //   setState(() {
        //     isCollapsed = !isCollapsed;
        //     if (isCollapsed) {
        //       _mainDropDownHeight *= items.length + 0.6;
        //       _iconController.forward();
        //     } else {
        //       _iconController.reverse();
        //       _mainDropDownHeight /= items.length + 0.6;
        //     }
        //   });
        // },
        child: Container(
          color: Color(0xff25292B),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 18),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xff7D7D7D),
                    size: 30,
                  )
                ],
              ),
              AnimatedSize(
                duration: Duration(milliseconds: 900),
                vsync: this,
                curve: Curves.fastOutSlowIn,
                child: isCollapsed
                    ? Column(
                      children: _renderDropDownItems(items: this.items),
                    )
                    : null,
              )
            ],
          ),
        ),
      ),
    );
  }
}
