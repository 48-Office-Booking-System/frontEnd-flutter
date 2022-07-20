import 'dart:convert';

DetailModel detailModelFromJson(String str) => DetailModel.fromJson(json.decode(str));

String detailModelToJson(DetailModel data) => json.encode(data.toJson());

class DetailModel {
  DetailModel({
    required this.code,
    required this.message,
    required this.data,
  });

  int code;
  String message;
  Data data;

  factory DetailModel.fromJson(Map<String, dynamic> json) => DetailModel(
    code: json["code"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "message": message,
    "data": data.toJson(),
  };
}

class Review {
  Review({
    required this.id,
    required this.userId,
    required this.user,
    required this.officeId,
    required this.office,
    required this.star,
    required this.text,
  });

  int id;
  int userId;
  User user;
  int officeId;
  Data office;
  int star;
  String text;

  factory Review.fromJson(Map<String, dynamic> json) => Review(
    id: json["id"],
    userId: json["user_id"],
    user: User.fromJson(json["user"]),
    officeId: json["office_id"],
    office: Data.fromJson(json["office"]),
    star: json["star"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "user": user.toJson(),
    "office_id": officeId,
    "office": office.toJson(),
    "star": star,
    "text": text,
  };
}

class Data {
  Data({
    required this.id,
    required this.typeId,
    required this.type,
    required this.name,
    required this.description,
    required this.latitude,
    required this.longitude,
    required this.viewCount,
    required this.price,
    required this.chairMin,
    required this.chairMax,
    // required this.photoUrls,
    required this.number,
    // required this.facilitations,
    // required this.tags,
    // required this.reviews,
  });

  int id;
  int typeId;
  Type type;
  String name;
  String description;
  String latitude;
  String longitude;
  int viewCount;
  int price;
  int chairMin;
  int chairMax;
  // List<PhotoUrl> photoUrls;
  String number;
  // List<Type> facilitations;
  // List<Type> tags;
  // List<Review> reviews;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    typeId: json["type_id"] == null ? null : json["type_id"],
    type: Type.fromJson(json["type"]),
    name: json["name"],
    description: json["description"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    viewCount: json["view_count"],
    price: json["price"],
    chairMin: json["chair_min"],
    chairMax: json["chair_max"],
    // photoUrls: json["photo_urls"] == null ? null : List<PhotoUrl>.from(json["photo_urls"].map((x) => PhotoUrl.fromJson(x))),
    number: json["number"],
    // facilitations: json["facilitations"] == null ? null : List<Type>.from(json["facilitations"].map((x) => Type.fromJson(x))),
    // tags: json["tags"] == null ? null : List<Type>.from(json["tags"].map((x) => Type.fromJson(x))),
    // reviews: json["reviews"] == null ? null : List<Review>.from(json["reviews"].map((x) => Review.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "type_id": typeId == null ? null : typeId,
    "type": type.toJson(),
    "name": name,
    "description": description,
    "latitude": latitude,
    "longitude": longitude,
    "view_count": viewCount,
    "price": price,
    "chair_min": chairMin,
    "chair_max": chairMax,
    // "photo_urls": photoUrls == null ? null : List<dynamic>.from(photoUrls.map((x) => x.toJson())),
    "number": number,
    // "facilitations": facilitations == null ? null : List<dynamic>.from(facilitations.map((x) => x.toJson())),
    // "tags": tags == null ? null : List<dynamic>.from(tags.map((x) => x.toJson())),
    // "reviews": reviews == null ? null : List<dynamic>.from(reviews.map((x) => x.toJson())),
  };
}

class User {
  User({
    required this.id,
    required this.role,
    required this.name,
    required this.email,
    required this.photoUrl,
    required this.number,
    this.bookings,
    this.reviews,
  });

  int id;
  Type role;
  String name;
  String email;
  String photoUrl;
  String number;
  dynamic bookings;
  dynamic reviews;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    role: Type.fromJson(json["role"]),
    name: json["name"],
    email: json["email"],
    photoUrl: json["photo_url"],
    number: json["number"],
    bookings: json["bookings"],
    reviews: json["reviews"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "role": role.toJson(),
    "name": name,
    "email": email,
    "photo_url": photoUrl,
    "number": number,
    "bookings": bookings,
    "reviews": reviews,
  };
}

class Type {
  Type({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory Type.fromJson(Map<String, dynamic> json) => Type(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}

class PhotoUrl {
  PhotoUrl({
    required this.url,
    required this.officeId,
  });

  String url;
  int officeId;

  factory PhotoUrl.fromJson(Map<String, dynamic> json) => PhotoUrl(
    url: json["url"],
    officeId: json["office_id"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "office_id": officeId,
  };
}
