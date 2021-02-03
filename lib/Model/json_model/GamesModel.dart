class GamesModel {
  List<Games> games;
  int allFilteredCount;

  GamesModel({this.games, this.allFilteredCount});

  GamesModel.fromJson(Map<String, dynamic> json) {
    if (json['games'] != null) {
      games = <Games>[];
      json['games'].forEach((v) {
        games.add(new Games.fromJson(v));
      });
    }
    allFilteredCount = json['allFilteredCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.games != null) {
      data['games'] = this.games.map((v) => v.toJson()).toList();
    }
    data['allFilteredCount'] = this.allFilteredCount;
    return data;
  }
}

class Games {
  int id;
  String externalGameId;
  int brandId;
  bool isActive;
  int typeId;
  String name;
  String image;
  int integrationId;
  String integrationName;
  int pageId;
  Null bonusContext;
  String slug;
  Null gameVariantId;
  List<Tags> tags;
  List<Jackpots> jackpots;
  Null metaData;
  int likeCount;
  bool isLiked;

  Games(
      {this.id,
      this.externalGameId,
      this.brandId,
      this.isActive,
      this.typeId,
      this.name,
      this.image,
      this.integrationId,
      this.integrationName,
      this.pageId,
      this.bonusContext,
      this.slug,
      this.gameVariantId,
      this.tags,
      this.jackpots,
      this.metaData,
      this.likeCount,
      this.isLiked});

  Games.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    externalGameId = json['externalGameId'];
    brandId = json['brandId'];
    isActive = json['isActive'];
    typeId = json['typeId'];
    name = json['name'];
    image = json['image'];
    integrationId = json['integrationId'];
    integrationName = json['integrationName'];
    pageId = json['pageId'];
    bonusContext = json['bonusContext'];
    slug = json['slug'];
    gameVariantId = json['gameVariantId'];
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags.add(new Tags.fromJson(v));
      });
    }
    if (json['jackpots'] != null) {
      jackpots = <Jackpots>[];
      json['jackpots'].forEach((v) {
        jackpots.add(new Jackpots.fromJson(v));
      });
    }
    metaData = json['metaData'];
    likeCount = json['likeCount'];
    isLiked = json['isLiked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['externalGameId'] = this.externalGameId;
    data['brandId'] = this.brandId;
    data['isActive'] = this.isActive;
    data['typeId'] = this.typeId;
    data['name'] = this.name;
    data['image'] = this.image;
    data['integrationId'] = this.integrationId;
    data['integrationName'] = this.integrationName;
    data['pageId'] = this.pageId;
    data['bonusContext'] = this.bonusContext;
    data['slug'] = this.slug;
    data['gameVariantId'] = this.gameVariantId;
    if (this.tags != null) {
      data['tags'] = this.tags.map((v) => v.toJson()).toList();
    }
    if (this.jackpots != null) {
      data['jackpots'] = this.jackpots.map((v) => v.toJson()).toList();
    }
    data['metaData'] = this.metaData;
    data['likeCount'] = this.likeCount;
    data['isLiked'] = this.isLiked;
    return data;
  }
}

class Tags {
  int id;
  String name;
  String color;
  int gameId;

  Tags({this.id, this.name, this.color, this.gameId});

  Tags.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    color = json['color'];
    gameId = json['gameId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['color'] = this.color;
    data['gameId'] = this.gameId;
    return data;
  }
}

class Jackpots {
  int id;
  double amount;
  String currency;
  int gameId;

  Jackpots({this.id, this.amount, this.currency, this.gameId});

  Jackpots.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    amount = json['amount'];
    currency = json['currency'];
    gameId = json['gameId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['amount'] = this.amount;
    data['currency'] = this.currency;
    data['gameId'] = this.gameId;
    return data;
  }
}
