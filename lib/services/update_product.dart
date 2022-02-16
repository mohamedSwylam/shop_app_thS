import 'package:shop_app_api_th_s/models/product_model.dart';
import 'package:shop_app_api_th_s/shared/network/remote/web_services.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct({required String title,
    required String price,
    required String description,
    required String image,
    required int id,
    required String category}) async {
    Map<String, dynamic> data =
    await Api().put(url: 'https://fakestoreapi.com/products/$id',body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    });

    return ProductModel.fromJson(data);
  }
}