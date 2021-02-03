
import 'dart:async';

import 'package:evropebet/Model/json_model/GamesModel.dart';
import 'package:evropebet/Model/json_model/SliderModel.dart';
import 'package:evropebet/fonts/eb_icons.dart';
import 'package:evropebet/manager/data_manager.dart';
import 'package:evropebet/widgets/BottomMenu/BottomMenu.dart';
import 'package:evropebet/widgets/CarouselListView/CarouselFutureBuilder.dart';

import 'package:evropebet/widgets/GameListView/GameListView.dart';
import 'package:flutter/material.dart';


class PageContent extends StatefulWidget {
  PageContent({Key key}) : super(key: key);

  @override
  _PageContentState createState() => _PageContentState();
}

class _PageContentState extends State<PageContent> {
  Future<List<SliderBanners>> _sliders;
  Future<GamesModel> _games;
  Future<GamesModel> _trendingGames;
  Future<GamesModel> _liveCasino;
  Future<GamesModel> _jeckpot;

  @override
  void initState() {
    super.initState();
    _sliders = EuropeBetDataManager().getSlidersData();
    _games = EuropeBetDataManager().getGamesData();
    _trendingGames = EuropeBetDataManager().getTrendingGamesData();
    _liveCasino = EuropeBetDataManager().getLiveCasinoData();
    _jeckpot = EuropeBetDataManager().getJackpotGamesData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CarouselFutureBuilder(
            sliders: _sliders,
          ),
          GameListView(
            titleIcon: Icon(
              Eb.uniE99D,
              size: 24,
              color: Color(0xfff05a22),
            ),
            titleText: 'Games',
            sectionEnterCallback: () {},
            future: _games,
          ),
          GameListView(
            titleIcon: Icon(
              Eb.uniE910,
              size: 24,
              color: Color(0xff6E3EA9),
            ),
            titleText: 'Trending Games',
            sectionEnterCallback: () {},
            future: _trendingGames,
          ),
          GameListView(
            titleIcon: Icon(
              Eb.livebet,
              size: 27,
              color: Color(0xffEE3F47),
            ),
            titleText: 'Live Casino',
            sectionEnterCallback: () {},
            future: _liveCasino,
          ),
          GameListView(
            titleIcon: Icon(
              Eb.uniE90F,
              size: 24,
              color: Color(0xff1F85BA),
            ),
            titleText: 'Jackpots Games',
            sectionEnterCallback: () {},
            future: _jeckpot,
          ),
          BottomMenu(),
        ],
      ),
    );
  }
}
