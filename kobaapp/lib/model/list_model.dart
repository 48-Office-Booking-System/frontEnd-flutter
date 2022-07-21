class ListModel {
  int? code;
  String? message;
  List<Data>? data;

  ListModel({this.code, this.message, this.data});

  ListModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
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
  List<Reviews>? reviews;

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
      this.reviews});

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
    if (json['reviews'] != null) {
      reviews = <Reviews>[];
      json['reviews'].forEach((v) {
        reviews!.add(new Reviews.fromJson(v));
      });
    }
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
    if (this.reviews != null) {
      data['reviews'] = this.reviews!.map((v) => v.toJson()).toList();
    }
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

class Reviews {
  int? id;
  int? userId;
  User? user;
  int? officeId;
  Office? office;
  int? star;
  String? text;
  int? hidden;

  Reviews(
      {this.id,
      this.userId,
      this.user,
      this.officeId,
      this.office,
      this.star,
      this.text,
      this.hidden});

  Reviews.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    officeId = json['office_id'];
    office =
        json['office'] != null ? new Office.fromJson(json['office']) : null;
    star = json['star'];
    text = json['text'];
    hidden = json['hidden'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['office_id'] = this.officeId;
    if (this.office != null) {
      data['office'] = this.office!.toJson();
    }
    data['star'] = this.star;
    data['text'] = this.text;
    data['hidden'] = this.hidden;
    return data;
  }
}

class User {
  int? id;
  Type? role;
  String? name;
  String? email;
  String? photoUrl;
  String? number;
  Null? bookings;
  Null? reviews;

  User(
      {this.id,
      this.role,
      this.name,
      this.email,
      this.photoUrl,
      this.number,
      this.bookings,
      this.reviews});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    role = json['role'] != null ? new Type.fromJson(json['role']) : null;
    name = json['name'];
    email = json['email'];
    photoUrl = json['photo_url'];
    number = json['number'];
    bookings = json['bookings'];
    reviews = json['reviews'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.role != null) {
      data['role'] = this.role!.toJson();
    }
    data['name'] = this.name;
    data['email'] = this.email;
    data['photo_url'] = this.photoUrl;
    data['number'] = this.number;
    data['bookings'] = this.bookings;
    data['reviews'] = this.reviews;
    return data;
  }
}

class Office {
  int? id;
  Type? type;
  String? name;
  String? description;
  String? latitude;
  String? longitude;
  int? viewCount;
  int? price;
  int? chairMin;
  int? chairMax;
  Null? photoUrls;
  String? number;
  Null? facilitations;
  Null? tags;
  Null? reviews;

  Office(
      {this.id,
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
      this.facilitations,
      this.tags,
      this.reviews});

  Office.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'] != null ? new Type.fromJson(json['type']) : null;
    name = json['name'];
    description = json['description'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    viewCount = json['view_count'];
    price = json['price'];
    chairMin = json['chair_min'];
    chairMax = json['chair_max'];
    photoUrls = json['photo_urls'];
    number = json['number'];
    facilitations = json['facilitations'];
    tags = json['tags'];
    reviews = json['reviews'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
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
    data['photo_urls'] = this.photoUrls;
    data['number'] = this.number;
    data['facilitations'] = this.facilitations;
    data['tags'] = this.tags;
    data['reviews'] = this.reviews;
    return data;
  }
}
