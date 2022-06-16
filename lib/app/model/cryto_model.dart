import 'dart:convert';


class CryptoModel {
  dynamic name;
  String image;
  num currentPrice;
  num priceChange24h;
  num priceChangePercentage24h;

  CryptoModel({
    required this.name,
    required this.image,
    required this.currentPrice,
    required this.priceChange24h,
    required this.priceChangePercentage24h,
  });

  //Converte o json para o model 
  Map<String, dynamic> toMap(){
    return {
      'name': name,
      'image': image,
      'current_price': currentPrice,
      'price_change_24h': priceChange24h,
      'price_change_percentage_24h': priceChangePercentage24h,
    };
  }


  //Converte o model para o json
  factory CryptoModel.fromMap(Map<String, dynamic> map) {
    return CryptoModel(
      name: map['name'] ?? '',     
      image: map['image'] ?? '',
      currentPrice: map['current_price'] ?? 0,
      priceChange24h: map['price_change_24h'] ?? 0,
      priceChangePercentage24h: map['price_change_percentage_24h'] ?? 0,
    );
  }

  //Converte o json para o model
  String toJson() => json.encode(toMap());

  //Converte o model para o json
  factory CryptoModel.fromJson(String source) =>
      CryptoModel.fromMap(json.decode(source));
}
