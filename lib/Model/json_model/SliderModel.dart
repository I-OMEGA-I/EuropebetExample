
class SliderModel {
  List<Sliders> sliders;
  Documents documents;
  List<Languages> languages;
  String countryCode;

  SliderModel({this.sliders, this.documents, this.languages, this.countryCode});

  SliderModel.fromJson(Map<String, dynamic> json) {
    if (json['sliders'] != null) {
      sliders = <Sliders>[];
      json['sliders'].forEach((v) {
        sliders.add(new Sliders.fromJson(v));
      });
    }
    documents = json['documents'] != null
        ? new Documents.fromJson(json['documents'])
        : null;
    if (json['languages'] != null) {
      languages = <Languages>[];
      json['languages'].forEach((v) {
        languages.add(new Languages.fromJson(v));
      });
    }
    countryCode = json['countryCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sliders != null) {
      data['sliders'] = this.sliders.map((v) => v.toJson()).toList();
    }
    if (this.documents != null) {
      data['documents'] = this.documents.toJson();
    }
    if (this.languages != null) {
      data['languages'] = this.languages.map((v) => v.toJson()).toList();
    }
    data['countryCode'] = this.countryCode;
    return data;
  }
}

class Sliders {
  int id;
  String name;
  bool isHidden;
  int productId;
  int devicePlatformId;
  List<SliderBanners> sliderBanners;

  Sliders(
      {this.id,
      this.name,
      this.isHidden,
      this.productId,
      this.devicePlatformId,
      this.sliderBanners});

  Sliders.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    isHidden = json['isHidden'];
    productId = json['productId'];
    devicePlatformId = json['devicePlatformId'];
    if (json['sliderBanners'] != null) {
      sliderBanners = <SliderBanners>[];
      json['sliderBanners'].forEach((v) {
        sliderBanners.add(new SliderBanners.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['isHidden'] = this.isHidden;
    data['productId'] = this.productId;
    data['devicePlatformId'] = this.devicePlatformId;
    if (this.sliderBanners != null) {
      data['sliderBanners'] =
          this.sliderBanners.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SliderBanners {
  int id;
  int sliderId;
  String key;
  int sortOrder;
  bool enabled;
  List<NormalSchedules> normalSchedules;
  List<Translations> translations;
  PlacementRules placementRules;

  SliderBanners(
      {this.id,
      this.sliderId,
      this.key,
      this.sortOrder,
      this.enabled,
      this.normalSchedules,
      this.translations,
      this.placementRules});

  SliderBanners.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sliderId = json['sliderId'];
    key = json['key'];
    sortOrder = json['sortOrder'];
    enabled = json['enabled'];
    if (json['normalSchedules'] != null) {
      normalSchedules = <NormalSchedules>[];
      json['normalSchedules'].forEach((v) {
        normalSchedules.add(new NormalSchedules.fromJson(v));
      });
    }
    if (json['translations'] != null) {
      translations = <Translations>[];
      json['translations'].forEach((v) {
        translations.add(new Translations.fromJson(v));
      });
    }
    placementRules = json['placementRules'] != null
        ? new PlacementRules.fromJson(json['placementRules'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['sliderId'] = this.sliderId;
    data['key'] = this.key;
    data['sortOrder'] = this.sortOrder;
    data['enabled'] = this.enabled;
    if (this.normalSchedules != null) {
      data['normalSchedules'] =
          this.normalSchedules.map((v) => v.toJson()).toList();
    }
    if (this.translations != null) {
      data['translations'] = this.translations.map((v) => v.toJson()).toList();
    }
    if (this.placementRules != null) {
      data['placementRules'] = this.placementRules.toJson();
    }
    return data;
  }
}

class NormalSchedules {
  int id;
  int sliderBannerId;
  String startDate;
  String endDate;

  NormalSchedules({this.id, this.sliderBannerId, this.startDate, this.endDate});

  NormalSchedules.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sliderBannerId = json['sliderBannerId'];
    startDate = json['startDate'];
    endDate = json['endDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['sliderBannerId'] = this.sliderBannerId;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    return data;
  }
}

class Translations {
  int id;
  int sliderBannerId;
  int languageId;
  String title;
  int titleColorId;
  String titleColor;
  String description;
  int descriptionColorId;
  String descriptionColor;
  String link;
  String linkTarget;
  bool linkNeedsAuth;
  int sliderImageId;
  Image image;

  Translations(
      {this.id,
      this.sliderBannerId,
      this.languageId,
      this.title,
      this.titleColorId,
      this.titleColor,
      this.description,
      this.descriptionColorId,
      this.descriptionColor,
      this.link,
      this.linkTarget,
      this.linkNeedsAuth,
      this.sliderImageId,
      this.image});

  Translations.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sliderBannerId = json['sliderBannerId'];
    languageId = json['languageId'];
    title = json['title'];
    titleColorId = json['titleColorId'];
    titleColor = json['titleColor'];
    description = json['description'];
    descriptionColorId = json['descriptionColorId'];
    descriptionColor = json['descriptionColor'];
    link = json['link'];
    linkTarget = json['linkTarget'];
    linkNeedsAuth = json['linkNeedsAuth'];
    sliderImageId = json['sliderImageId'];
    image = json['image'] != null ? new Image.fromJson(json['image']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['sliderBannerId'] = this.sliderBannerId;
    data['languageId'] = this.languageId;
    data['title'] = this.title;
    data['titleColorId'] = this.titleColorId;
    data['titleColor'] = this.titleColor;
    data['description'] = this.description;
    data['descriptionColorId'] = this.descriptionColorId;
    data['descriptionColor'] = this.descriptionColor;
    data['link'] = this.link;
    data['linkTarget'] = this.linkTarget;
    data['linkNeedsAuth'] = this.linkNeedsAuth;
    data['sliderImageId'] = this.sliderImageId;
    if (this.image != null) {
      data['image'] = this.image.toJson();
    }
    return data;
  }
}

class Image {
  int id;
  String image;
  int width;
  int height;

  Image({this.id, this.image, this.width, this.height});

  Image.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['width'] = this.width;
    data['height'] = this.height;
    return data;
  }
}

class PlacementRules {
  int sliderBannerId;

  PlacementRules(
      {this.sliderBannerId});

  PlacementRules.fromJson(Map<String, dynamic> json) {
    sliderBannerId = json['sliderBannerId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sliderBannerId'] = this.sliderBannerId;

    return data;
  }
}

class Documents {
  List<DocumentTypes> documentTypes;
  String imageBaseUrl;
  String videosBaseUrl;

  Documents({this.documentTypes, this.imageBaseUrl, this.videosBaseUrl});

  Documents.fromJson(Map<String, dynamic> json) {
    if (json['documentTypes'] != null) {
      documentTypes = <DocumentTypes>[];
      json['documentTypes'].forEach((v) {
        documentTypes.add(new DocumentTypes.fromJson(v));
      });
    }
    imageBaseUrl = json['imageBaseUrl'];
    videosBaseUrl = json['videosBaseUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.documentTypes != null) {
      data['documentTypes'] =
          this.documentTypes.map((v) => v.toJson()).toList();
    }
    data['imageBaseUrl'] = this.imageBaseUrl;
    data['videosBaseUrl'] = this.videosBaseUrl;
    return data;
  }
}

class DocumentTypes {
  int id;
  String name;
  int productId;
  int devicePlatformId;
  List<Documents> documents;
  List<Groups> groups;

  DocumentTypes(
      {this.id,
      this.name,
      this.productId,
      this.devicePlatformId,
      this.documents,
      this.groups});

  DocumentTypes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    productId = json['productId'];
    devicePlatformId = json['devicePlatformId'];
    if (json['documents'] != null) {
      documents = <Documents>[];
      json['documents'].forEach((v) {
        documents.add(new Documents.fromJson(v));
      });
    }
    if (json['groups'] != null) {
      groups = <Groups>[];
      json['groups'].forEach((v) {
        groups.add(new Groups.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['productId'] = this.productId;
    data['devicePlatformId'] = this.devicePlatformId;
    if (this.documents != null) {
      data['documents'] = this.documents.map((v) => v.toJson()).toList();
    }
    if (this.groups != null) {
      data['groups'] = this.groups.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Document {
  int id;
  String key;
  int documentTypeId;
  Null startDate;
  Null endDate;
  int languageId;
  String languageCode;
  int sortOrder;
  List<Components> components;

  Document(
      {this.id,
      this.key,
      this.documentTypeId,
      this.startDate,
      this.endDate,
      this.languageId,
      this.languageCode,
      this.sortOrder,
      this.components});

  Document.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    key = json['key'];
    documentTypeId = json['documentTypeId'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    languageId = json['languageId'];
    languageCode = json['languageCode'];
    sortOrder = json['sortOrder'];
    if (json['components'] != null) {
      components = <Components>[];
      json['components'].forEach((v) {
        components.add(new Components.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['key'] = this.key;
    data['documentTypeId'] = this.documentTypeId;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['languageId'] = this.languageId;
    data['languageCode'] = this.languageCode;
    data['sortOrder'] = this.sortOrder;
    if (this.components != null) {
      data['components'] = this.components.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Components {
  int id;
  String name;
  int documentId;
  int componentTypeId;
  String componentTypeName;
  int sortOrder;
  List<Instances> instances;

  Components(
      {this.id,
      this.name,
      this.documentId,
      this.componentTypeId,
      this.componentTypeName,
      this.sortOrder,
      this.instances});

  Components.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    documentId = json['documentId'];
    componentTypeId = json['componentTypeId'];
    componentTypeName = json['componentTypeName'];
    sortOrder = json['sortOrder'];
    if (json['instances'] != null) {
      instances = <Instances>[];
      json['instances'].forEach((v) {
        instances.add(new Instances.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['documentId'] = this.documentId;
    data['componentTypeId'] = this.componentTypeId;
    data['componentTypeName'] = this.componentTypeName;
    data['sortOrder'] = this.sortOrder;
    if (this.instances != null) {
      data['instances'] = this.instances.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Instances {
  int id;
  int documentTypeComponentTypeId;
  int sortOrder;
  int documentId;
  List<Attributes> attributes;

  Instances(
      {this.id,
      this.documentTypeComponentTypeId,
      this.sortOrder,
      this.documentId,
      this.attributes});

  Instances.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    documentTypeComponentTypeId = json['documentTypeComponentTypeId'];
    sortOrder = json['sortOrder'];
    documentId = json['documentId'];
    if (json['attributes'] != null) {
      attributes = <Attributes>[];
      json['attributes'].forEach((v) {
        attributes.add(new Attributes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['documentTypeComponentTypeId'] = this.documentTypeComponentTypeId;
    data['sortOrder'] = this.sortOrder;
    data['documentId'] = this.documentId;
    if (this.attributes != null) {
      data['attributes'] = this.attributes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Attributes {
  String value;
  int componentTypeAttributeId;
  String componentTypeAttributeName;
  int documentComponentInstanceId;

  Attributes(
      {this.value,
      this.componentTypeAttributeId,
      this.componentTypeAttributeName,
      this.documentComponentInstanceId});

  Attributes.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    componentTypeAttributeId = json['componentTypeAttributeId'];
    componentTypeAttributeName = json['componentTypeAttributeName'];
    documentComponentInstanceId = json['documentComponentInstanceId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['componentTypeAttributeId'] = this.componentTypeAttributeId;
    data['componentTypeAttributeName'] = this.componentTypeAttributeName;
    data['documentComponentInstanceId'] = this.documentComponentInstanceId;
    return data;
  }
}

class Groups {
  int id;
  String name;
  int documentTypeId;

  Groups({this.id, this.name, this.documentTypeId});

  Groups.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    documentTypeId = json['documentTypeId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['documentTypeId'] = this.documentTypeId;
    return data;
  }
}

class Languages {
  int id;
  String name;
  String code;
  String tag;

  Languages({this.id, this.name, this.code, this.tag});

  Languages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    code = json['code'];
    tag = json['tag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['code'] = this.code;
    data['tag'] = this.tag;
    return data;
  }
}