// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    this.itemid,
    this.image,
    this.shopid,
    this.currency,
    this.showFreeShipping,
    this.images,
    this.catid,
    this.isOfficialShop,
    this.priceMin,
    this.likedCount,
    this.sold,
    this.stock,
    this.priceMax,
    this.price,
    this.shopLocation,
    this.itemRating,
    this.showOfficialShopLabelInTitle,
    this.isAdult,
    this.discount,
    this.name,
    this.distance,
    this.adsid,
    this.ctime,
    this.showShopeeVerifiedLabel,
    this.itemStatus,
    this.shopeeVerified,
  });

  int itemid;
  String image;
  int shopid;
  String currency;
  bool showFreeShipping;
  List<String> images;
  int catid;
  bool isOfficialShop;
  int priceMin;
  int likedCount;
  int sold;
  int stock;
  int priceMax;
  int price;
  String shopLocation;
  ItemRating itemRating;
  bool showOfficialShopLabelInTitle;
  bool isAdult;
  dynamic discount;
  String name;
  dynamic distance;
  int adsid;
  int ctime;
  bool showShopeeVerifiedLabel;
  String itemStatus;
  bool shopeeVerified;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    itemid: json["itemid"],
    image: json["image"],
    shopid: json["shopid"],
    currency: json["currency"],
    showFreeShipping: json["show_free_shipping"],
    images: List<String>.from(json["images"].map((x) => x)),
    catid: json["catid"],
    isOfficialShop: json["is_official_shop"],
    priceMin: json["price_min"],
    likedCount: json["liked_count"],
    sold: json["sold"],
    stock: json["stock"],
    priceMax: json["price_max"],
    price: json["price"],
    shopLocation: json["shop_location"],
    itemRating: ItemRating.fromJson(json["item_rating"]),
    showOfficialShopLabelInTitle: json["show_official_shop_label_in_title"],
    isAdult: json["is_adult"],
    discount: json["discount"],
    name: json["name"],
    distance: json["distance"],
    adsid: json["adsid"],
    ctime: json["ctime"],
    showShopeeVerifiedLabel: json["show_shopee_verified_label"],
    itemStatus: json["item_status"],
    shopeeVerified: json["shopee_verified"],
  );

  Map<String, dynamic> toJson() => {
    "itemid": itemid,
    "image": image,
    "shopid": shopid,
    "currency": currency,
    "show_free_shipping": showFreeShipping,
    "images": List<dynamic>.from(images.map((x) => x)),
    "catid": catid,
    "is_official_shop": isOfficialShop,
    "price_min": priceMin,
    "liked_count": likedCount,
    "sold": sold,
    "stock": stock,
    "price_max": priceMax,
    "price": price,
    "shop_location": shopLocation,
    "item_rating": itemRating.toJson(),
    "show_official_shop_label_in_title": showOfficialShopLabelInTitle,
    "is_adult": isAdult,
    "discount": discount,
    "name": name,
    "distance": distance,
    "adsid": adsid,
    "ctime": ctime,
    "show_shopee_verified_label": showShopeeVerifiedLabel,
    "item_status": itemStatus,
    "shopee_verified": shopeeVerified,
  };
}

class ItemRating {
  ItemRating({
    this.ratingStar,
    this.ratingCount,
    this.rcountWithImage,
    this.rcountWithContext,
  });

  double ratingStar;
  List<int> ratingCount;
  int rcountWithImage;
  int rcountWithContext;

  factory ItemRating.fromJson(Map<String, dynamic> json) => ItemRating(
    ratingStar: json["rating_star"].toDouble(),
    ratingCount: List<int>.from(json["rating_count"].map((x) => x)),
    rcountWithImage: json["rcount_with_image"],
    rcountWithContext: json["rcount_with_context"],
  );

  Map<String, dynamic> toJson() => {
    "rating_star": ratingStar,
    "rating_count": List<dynamic>.from(ratingCount.map((x) => x)),
    "rcount_with_image": rcountWithImage,
    "rcount_with_context": rcountWithContext,
  };
}