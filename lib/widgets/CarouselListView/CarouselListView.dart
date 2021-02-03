
import 'package:evropebet/widgets/CarouselListView/model/CarouselItemModel.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:shimmer/shimmer.dart';

class CarouselListView extends StatefulWidget {
  final List<CarouselItemModel> carouselItems;
  final bool isLoading;

  CarouselListView({@required this.carouselItems, this.isLoading = false});
  @override
  _CarouselListViewState createState() => _CarouselListViewState();
}

class _CarouselListViewState extends State<CarouselListView> {
  var _currentItemFocused = 0;
  bool _firstRoll = true;
  Timer _oldTimer;

  GlobalKey<ScrollSnapListState> sslKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    if (!widget.isLoading) {
      _oldTimer = Timer.periodic(Duration(seconds: 15), (t) {
        if (!_firstRoll)
          _currentItemFocused =
              _currentItemFocused != widget.carouselItems.length - 1
                  ? _currentItemFocused += 1
                  : 0;

        if (_firstRoll) {
          sslKey.currentState.focusToItem(_currentItemFocused + 1);
          _firstRoll = false;
        } else
          sslKey.currentState.focusToItem(_currentItemFocused);
      });
    }
  }

  @override
  void didUpdateWidget(covariant CarouselListView oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (!widget.isLoading) {
      if(_oldTimer == null)
        _oldTimer = Timer.periodic(Duration(seconds: 13), (t) {
          if (!_firstRoll)
            _currentItemFocused =
                _currentItemFocused != widget.carouselItems.length - 1
                    ? _currentItemFocused += 1
                    : 0;

          if (_firstRoll) {
            sslKey.currentState.focusToItem(_currentItemFocused + 1);
            _firstRoll = false;
          } else
            sslKey.currentState.focusToItem(_currentItemFocused);
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Container(
          height: 200,
          margin: EdgeInsets.symmetric(vertical: 15),
          width: double.infinity,
          child: ScrollSnapList(

            key: sslKey,
            margin: EdgeInsets.all(0),
            selectedItemAnchor: SelectedItemAnchor.START,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 13),
                width: 326,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Stack(
                    children: [
                      widget.carouselItems[index].image.contains('http')
                          ? Image.network(
                              widget.carouselItems[index].image,
                              fit: BoxFit.cover,
                              loadingBuilder: (BuildContext context,
                                  Widget child,
                                  ImageChunkEvent loadingProgress) {
                                if (loadingProgress == null) return child;
                                return Center(
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Color(0xfff05a22)),
                                  ),
                                );
                              },
                            )
                          : Shimmer.fromColors(
                              child: Container(
                                width: 326,
                                height: 200,
                                color: Colors.red,
                              ),
                              baseColor: Color(0xff25292B),
                              highlightColor: Colors.white,
                            ),
                      Container(
                        decoration: widget.carouselItems[index].title != null
                            ? ShapeDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(195, 0, 0, 0),
                                      Color.fromARGB(0, 0, 0, 0)
                                    ],
                                    begin: Alignment.bottomRight,
                                    stops: [0.3, 1]),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                              )
                            : BoxDecoration(),
                      ),
                      widget.carouselItems[index].title != null && !widget.isLoading
                          ? Positioned(
                              left: 20,
                              bottom: 15,
                              child: Container(
                                  width: 200,
                                  child:
                                      Text(widget.carouselItems[index].title)),
                            )
                          : Container(),
                    ],
                    fit: StackFit.expand,
                  ),
                ),
              );
            },
            itemCount: widget.carouselItems.length,
            scrollDirection: Axis.horizontal,
            itemSize: 346,
            onItemFocus: (int index) {
              setState(() {
                _currentItemFocused = index;
              });
            },
          ),
        ),
        !widget.isLoading
            ? Container(
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: widget.carouselItems
                    .asMap()
                    .map((index, _) => MapEntry(
                          index,
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                sslKey.currentState.focusToItem(index);
                                _currentItemFocused = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 3),
                              width: 16,
                              height: 4,
                              decoration: BoxDecoration(
                                  color: _currentItemFocused == index
                                      ? Color(0xfff05a22)
                                      : Color(0xff525353),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ))
                    .values
                    .toList(),
              ))
            : Container(),
      ],
    );
  }
}
