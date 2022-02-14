class ProductModel {
  final int id;
  final String title;
  final String description;
  final double price;
  final String image;
  final RatingModel rating;

  ProductModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.image,
      required this.rating});

  factory ProductModel.fromJson(json) {
    return ProductModel(
        id: json['id'],
        title: json['title'],
        description: json['price'],
        price: json['description'],
        image: json['image'],
        rating: RatingModel.fromJson(json['rating']),
    );
  }
}

class RatingModel {
  final int count;
  final double rate;

  RatingModel({required this.count, required this.rate});

  factory RatingModel.fromJson(json) {
    return RatingModel(count: json['count'], rate: json['rate']);
  }
}
