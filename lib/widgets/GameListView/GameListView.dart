import 'dart:async';

import 'package:evropebet/Model/json_model/GamesModel.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'GameTitle.dart';

class GameListView extends StatefulWidget {
  final Icon titleIcon;
  final String titleText;
  final Function sectionEnterCallback;
  final Future<GamesModel> future;

  GameListView(
      {@required this.titleIcon,
      @required this.titleText,
      @required this.sectionEnterCallback,
      this.future});

  @override
  _GameListViewState createState() => _GameListViewState();
}

class _GameListViewState extends State<GameListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            child: GameTitle(
                titleIcon: widget.titleIcon,
                titleText: widget.titleText,
                sectionEnterCallback: widget.sectionEnterCallback),
          ),
          SizedBox(
              height: 180,
              child: FutureBuilder(
                future: widget.future,
                builder:
                    (BuildContext context, AsyncSnapshot<GamesModel> snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data.games.length,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: 160,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Image.network(
                               snapshot.data.games[index].image,
                              fit: BoxFit.cover,
                              loadingBuilder: (BuildContext context,
                                  Widget child, ImageChunkEvent progress) {
                                if (progress == null) return child;
                                return Center(
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Color(0xfff05a22)),
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      },
                    );
                  }

                  return ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: 160,
                        height: 180,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Shimmer.fromColors(
                            child: Container(
                              width: 160,
                              height: 180,
                              color: Colors.black,
                            ),
                            baseColor: Color(0xff25292B),
                            highlightColor: Colors.white,
                          ),
                        ),
                      );
                    },
                  );
                },
              )),
        ],
      ),
    );
  }
}
