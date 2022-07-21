// To parse this JSON data, do
//
//     final getAllUser = getAllUserFromJson(jsonString);

import 'dart:convert';

List<GetAllUser> getAllUserFromJson(String str) =>
    List<GetAllUser>.from(json.decode(str).map((x) => GetAllUser.fromJson(x)));

String getAllUserToJson(List<GetAllUser> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAllUser {
  GetAllUser({
    required this.id,
    required this.role,
    required this.name,
    required this.email,
    required this.password,
    required this.photoUrl,
    required this.number,
    required this.bookings,
  });

  int id;
  Role role;
  String name;
  String email;
  String password;
  String photoUrl;
  String number;
  List<Booking> bookings;

  factory GetAllUser.fromJson(Map<String, dynamic> json) => GetAllUser(
        id: json["id"],
        role: Role.fromJson(json["role"]),
        name: json["name"],
        email: json["email"],
        password: json["password"],
        photoUrl: json["photo_url"],
        number: json["number"],
        bookings: List<Booking>.from(
            json["bookings"].map((x) => Booking.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "role": role.toJson(),
        "name": name,
        "email": email,
        "password": password,
        "photo_url": photoUrl,
        "number": number,
        "bookings": List<dynamic>.from(bookings.map((x) => x.toJson())),
      };
}

class Booking {
  Booking({
    required this.id,
    required this.user,
    required this.office,
    required this.status,
    required this.start,
    required this.end,
    required this.invoiceUrl,
  });

  int id;
  String user;
  Office office;
  Role status;
  String start;
  String end;
  String invoiceUrl;

  factory Booking.fromJson(Map<String, dynamic> json) => Booking(
        id: json["id"],
        user: json["user"],
        office: Office.fromJson(json["office"]),
        status: Role.fromJson(json["status"]),
        start: json["start"],
        end: json["end"],
        invoiceUrl: json["invoice_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user": user,
        "office": office.toJson(),
        "status": status.toJson(),
        "start": start,
        "end": end,
        "invoice_url": invoiceUrl,
      };
}

class Office {
  Office({
    required this.id,
    required this.createdBy,
    required this.type,
    required this.name,
    required this.description,
    required this.location,
    required this.viewCount,
    required this.price,
    required this.chairMin,
    required this.chairMax,
    required this.number,
    required this.photoUrls,
    required this.facilitations,
    required this.tags,
  });

  int id;
  String createdBy;
  Role type;
  String name;
  String description;
  String location;
  int viewCount;
  int price;
  int chairMin;
  int chairMax;
  String number;
  List<PhotoUrl> photoUrls;
  List<Role> facilitations;
  List<Role> tags;

  factory Office.fromJson(Map<String, dynamic> json) => Office(
        id: json["id"],
        createdBy: json["created_by"],
        type: Role.fromJson(json["type"]),
        name: json["name"],
        description: json["description"],
        location: json["location"],
        viewCount: json["view_count"],
        price: json["price"],
        chairMin: json["chair_min"],
        chairMax: json["chair_max"],
        number: json["number"],
        photoUrls: List<PhotoUrl>.from(
            json["photo_urls"].map((x) => PhotoUrl.fromJson(x))),
        facilitations:
            List<Role>.from(json["facilitations"].map((x) => Role.fromJson(x))),
        tags: List<Role>.from(json["tags"].map((x) => Role.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_by": createdBy,
        "type": type.toJson(),
        "name": name,
        "description": description,
        "location": location,
        "view_count": viewCount,
        "price": price,
        "chair_min": chairMin,
        "chair_max": chairMax,
        "number": number,
        "photo_urls": List<dynamic>.from(photoUrls.map((x) => x.toJson())),
        "facilitations":
            List<dynamic>.from(facilitations.map((x) => x.toJson())),
        "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
      };
}

class Role {
  Role({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory Role.fromJson(Map<String, dynamic> json) => Role(
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
    required this.officeId,
    required this.url,
  });

  int officeId;
  String url;

  factory PhotoUrl.fromJson(Map<String, dynamic> json) => PhotoUrl(
        officeId: json["office_id"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "office_id": officeId,
        "url": url,
      };
}
// To parse this JSON data, do
//
//     final getAllUser = getAllUserFromJson(jsonString);


