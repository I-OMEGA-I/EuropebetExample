import 'dart:convert';
import 'dart:io';

import 'package:evropebet/Model/json_model/GamesModel.dart';
import 'package:evropebet/Model/json_model/SliderModel.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:path_provider/path_provider.dart';

class EuropeBetDataManager {
  final String fileName = "mainDataCache.json";

  static final EuropeBetDataManager _singleton =
      EuropeBetDataManager._internal();

  factory EuropeBetDataManager() {
    return _singleton;
  }

  void getDirectory() async {
    
  }

  EuropeBetDataManager._internal();

  Future<List<SliderBanners>> getSlidersData() async {
    var cacheDir = await getTemporaryDirectory();

    if (await File(cacheDir.path + "/" + fileName).exists()) {
      print("Loading from cache");
      var jsonData = File(cacheDir.path + "/" + fileName).readAsStringSync();
      var propertData = SliderModel.fromJson(jsonDecode(jsonData));

      return propertData.sliders[2].sliderBanners;

    } else {
      var jsonResponse = await http.get(
          'https://mobile.europebet.com/api/content/initData/GetInitData?IncludedDocumentTypeNam');

      var propertData = SliderModel.fromJson(jsonDecode(jsonResponse.body));
      File file = File(cacheDir.path + "/" + fileName);
      file.writeAsString(jsonEncode(propertData.toJson()), flush: true, mode: FileMode.write);

      return propertData.sliders[2].sliderBanners;
    }
  }

  Future<GamesModel> getGamesData() async {
    var jsonData = await http.get(
        'https://mobile.europebet.com/api/games/game/GetGames?Limit=10&Offset=0&WithPromotedGames=true');

    return GamesModel.fromJson(jsonDecode(jsonData.body));
  }

  Future<GamesModel> getTrendingGamesData() async {
    var jsonData = await http.get(
        'https://mobile.europebet.com/api/games/game/GetGames?Limit=10&SortByPopularity=true&Offset=0');

    return GamesModel.fromJson(jsonDecode(jsonData.body));
  }

  Future<GamesModel> getLiveCasinoData() async {
    var jsonData = await http.get(
        'https://mobile.europebet.com/api/games/game/GetGames?Limit=10&Offset=0&PageId=');

    return GamesModel.fromJson(jsonDecode(jsonData.body));
  }

  Future<GamesModel> getJackpotGamesData() async {
    var jsonData = await http.get(
        'https://mobile.europebet.com/api/games/game/GetGames?Limit=10&Offset=0&PageId=1&tagIds=20005');
    return GamesModel.fromJson(jsonDecode(jsonData.body));
  }
}
