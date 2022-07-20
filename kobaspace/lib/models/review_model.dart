// To parse this JSON data, do
//
//     final reviewModel = reviewModelFromJson(jsonString);

import 'dart:convert';

ReviewModel reviewModelFromJson(String str) => ReviewModel.fromJson(json.decode(str));

String reviewModelToJson(ReviewModel data) => json.encode(data.toJson());

class ReviewModel {
    ReviewModel({
        required this.code,
        required this.message,
        required this.data,
    });

    int code;
    String message;
    List<Datum> data;

    factory ReviewModel.fromJson(Map<String, dynamic> json) => ReviewModel(
        code: json["code"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        required this.id,
        required this.userId,
        required this.user,
        required this.officeId,
        required this.office,
        required this.star,
        required this.text,
        required this.hidden,
    });

    int id;
    int userId;
    User user;
    int officeId;
    Office office;
    int star;
    String text;
    int hidden;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        userId: json["user_id"],
        user: User.fromJson(json["user"]),
        officeId: json["office_id"],
        office: Office.fromJson(json["office"]),
        star: json["star"],
        text: json["text"],
        hidden: json["hidden"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "user": user.toJson(),
        "office_id": officeId,
        "office": office.toJson(),
        "star": star,
        "text": text,
        "hidden": hidden,
    };
}

class Office {
    Office({
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
        this.photoUrls,
        required this.number,
        this.facilitations,
        this.tags,
        this.reviews,
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
    dynamic photoUrls;
    String number;
    dynamic facilitations;
    dynamic tags;
    dynamic reviews;

    factory Office.fromJson(Map<String, dynamic> json) => Office(
        id: json["id"],
        typeId: json["type_id"],
        type: Type.fromJson(json["type"]),
        name: json["name"],
        description: json["description"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        viewCount: json["view_count"],
        price: json["price"],
        chairMin: json["chair_min"],
        chairMax: json["chair_max"],
        photoUrls: json["photo_urls"],
        number: json["number"],
        facilitations: json["facilitations"],
        tags: json["tags"],
        reviews: json["reviews"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "type_id": typeId,
        "type": type.toJson(),
        "name": name,
        "description": description,
        "latitude": latitude,
        "longitude": longitude,
        "view_count": viewCount,
        "price": price,
        "chair_min": chairMin,
        "chair_max": chairMax,
        "photo_urls": photoUrls,
        "number": number,
        "facilitations": facilitations,
        "tags": tags,
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

class User {
    User({
        required this.id,
        required this.roleId,
        required this.role,
        required this.name,
        required this.email,
        required this.password,
        required this.photoUrl,
        required this.number,
        this.bookings,
        this.reviews,
    });

    int id;
    int roleId;
    Type role;
    String name;
    String email;
    String password;
    String photoUrl;
    String number;
    dynamic bookings;
    dynamic reviews;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        roleId: json["role_id"],
        role: Type.fromJson(json["role"]),
        name: json["name"],
        email: json["email"],
        password: json["password"],
        photoUrl: json["photo_url"],
        number: json["number"],
        bookings: json["bookings"],
        reviews: json["reviews"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "role_id": roleId,
        "role": role.toJson(),
        "name": name,
        "email": email,
        "password": password,
        "photo_url": photoUrl,
        "number": number,
        "bookings": bookings,
        "reviews": reviews,
    };
}
