class DetailModel {
  int? code;
  String? message;
  Data? data;

  DetailModel({this.code, this.message, this.data});

  DetailModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  int? typeId;
  Type? type;
  String? name;
  String? description;
  String? latitude;
  String? longitude;
  int? viewCount;
  int? price;
  int? chairMin;
  int? chairMax;
  List<PhotoUrls>? photoUrls;
  String? number;
  // List<Facilitations>? facilitations;
  // List<Tags>? tags;
  // List<Null>? reviews;

  Data(
      {this.id,
      this.typeId,
      this.type,
      this.name,
      this.description,
      this.latitude,
      this.longitude,
      this.viewCount,
      this.price,
      this.chairMin,
      this.chairMax,
      this.photoUrls,
      this.number,
      // this.facilitations,
      // this.tags,
      // this.reviews
      }
    );

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    typeId = json['type_id'];
    type = json['type'] != null ? new Type.fromJson(json['type']) : null;
    name = json['name'];
    description = json['description'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    viewCount = json['view_count'];
    price = json['price'];
    chairMin = json['chair_min'];
    chairMax = json['chair_max'];
    if (json['photo_urls'] != null) {
      photoUrls = <PhotoUrls>[];
      json['photo_urls'].forEach((v) {
        photoUrls!.add(new PhotoUrls.fromJson(v));
      });
    }
    number = json['number'];
    // if (json['facilitations'] != null) {
    //   facilitations = <Facilitations>[];
    //   json['facilitations'].forEach((v) {
    //     facilitations!.add(new Facilitations.fromJson(v));
    //   });
    // }
    // if (json['tags'] != null) {
    //   tags = <Tags>[];
    //   json['tags'].forEach((v) {
    //     tags!.add(new Tags.fromJson(v));
    //   });
    // }
    // if (json['reviews'] != null) {
    //   reviews = <Null>[];
    //   json['reviews'].forEach((v) {
    //     reviews!.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type_id'] = this.typeId;
    if (this.type != null) {
      data['type'] = this.type!.toJson();
    }
    data['name'] = this.name;
    data['description'] = this.description;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['view_count'] = this.viewCount;
    data['price'] = this.price;
    data['chair_min'] = this.chairMin;
    data['chair_max'] = this.chairMax;
    if (this.photoUrls != null) {
      data['photo_urls'] = this.photoUrls!.map((v) => v.toJson()).toList();
    }
    data['number'] = this.number;
    // if (this.facilitations != null) {
    //   data['facilitations'] =
    //       this.facilitations!.map((v) => v.toJson()).toList();
    // }
    // if (this.tags != null) {
    //   data['tags'] = this.tags!.map((v) => v.toJson()).toList();
    // }
    // if (this.reviews != null) {
    //   data['reviews'] = this.reviews!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class Type {
  int? id;
  String? name;

  Type({this.id, this.name});

  Type.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class PhotoUrls {
  String? url;
  int? officeId;

  PhotoUrls({this.url, this.officeId});

  PhotoUrls.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    officeId = json['office_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['office_id'] = this.officeId;
    return data;
  }
}
