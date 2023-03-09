// To parse this JSON data, do
//
//     final countryStateGenderModel = countryStateGenderModelFromJson(jsonString);

import 'dart:convert';

CountryStateGenderModel countryStateGenderModelFromJson(String str) => CountryStateGenderModel.fromJson(json.decode(str));

String countryStateGenderModelToJson(CountryStateGenderModel data) => json.encode(data.toJson());

class CountryStateGenderModel {
    CountryStateGenderModel({
        this.data,
        this.status,
        this.message,
    });

    Data? data;
    int? status;
    String? message;

    factory CountryStateGenderModel.fromJson(Map<String, dynamic> json) => CountryStateGenderModel(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        status: json["status"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
        "status": status,
        "message": message,
    };
}

class Data {
    Data({
        this.country,
        this.state,
        this.genders,
    });

    List<Country>? country;
    List<Country>? state;
    List<Country>? genders;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        country: json["country"] == null ? [] : List<Country>.from(json["country"]!.map((x) => Country.fromJson(x))),
        state: json["state"] == null ? [] : List<Country>.from(json["state"]!.map((x) => Country.fromJson(x))),
        genders: json["genders"] == null ? [] : List<Country>.from(json["genders"]!.map((x) => Country.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "country": country == null ? [] : List<dynamic>.from(country!.map((x) => x.toJson())),
        "state": state == null ? [] : List<dynamic>.from(state!.map((x) => x.toJson())),
        "genders": genders == null ? [] : List<dynamic>.from(genders!.map((x) => x.toJson())),
    };
}

class Country {
    Country({
        this.id,
        this.name,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.countryId,
    });

    int? id;
    String? name;
    int? status;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? countryId;

    factory Country.fromJson(Map<String, dynamic> json) => Country(
        id: json["id"],
        name: json["name"],
        status: json["status"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        countryId: json["country_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "country_id": countryId,
    };
}
