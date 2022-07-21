import 'dart:convert';

List<GetAllOffice> getAllOfficeFromJson(String str) => List<GetAllOffice>.from(
    json.decode(str).map((x) => GetAllOffice.fromJson(x)));

String getAllOfficeToJson(List<GetAllOffice> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAllOffice {
  GetAllOffice({
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
  CreatedBy createdBy;
  Type type;
  String name;
  String description;
  String location;
  int viewCount;
  int price;
  int chairMin;
  int chairMax;
  String number;
  List<PhotoUrl> photoUrls;
  List<Type> facilitations;
  List<Type> tags;

  factory GetAllOffice.fromJson(Map<String, dynamic> json) => GetAllOffice(
        id: json["id"],
        createdBy: CreatedBy.fromJson(json["created_by"]),
        type: Type.fromJson(json["type"]),
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
            List<Type>.from(json["facilitations"].map((x) => Type.fromJson(x))),
        tags: List<Type>.from(json["tags"].map((x) => Type.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_by": createdBy.toJson(),
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

class CreatedBy {
  CreatedBy({
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
  Type role;
  String name;
  String email;
  String password;
  String photoUrl;
  String number;
  List<Booking> bookings;

  factory CreatedBy.fromJson(Map<String, dynamic> json) => CreatedBy(
        id: json["id"],
        role: Type.fromJson(json["role"]),
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
  String office;
  Type status;
  String start;
  String end;
  String invoiceUrl;

  factory Booking.fromJson(Map<String, dynamic> json) => Booking(
        id: json["id"],
        user: json["user"],
        office: json["office"],
        status: Type.fromJson(json["status"]),
        start: json["start"],
        end: json["end"],
        invoiceUrl: json["invoice_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user": user,
        "office": office,
        "status": status.toJson(),
        "start": start,
        "end": end,
        "invoice_url": invoiceUrl,
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
