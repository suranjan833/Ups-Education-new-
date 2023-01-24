// To parse this JSON data, do
//
//     final cartModel = cartModelFromJson(jsonString);

import 'dart:convert';

CartModel cartModelFromJson(String str) => CartModel.fromJson(json.decode(str));

String cartModelToJson(CartModel data) => json.encode(data.toJson());

class CartModel {
    CartModel({
        this.data,
        this.status,
        this.message,
    });

    Data? data;
    int? status;
    String? message;

    factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
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
        this.cartdata,
    });

    List<dynamic>? cartdata;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        cartdata: json["cartdata"] == null ? [] : List<dynamic>.from(json["cartdata"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "cartdata": cartdata == null ? [] : List<dynamic>.from(cartdata!.map((x) => x)),
    };
}
