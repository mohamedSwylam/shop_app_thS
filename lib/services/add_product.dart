import 'package:shop_app_api_th_s/models/product_model.dart';
import 'package:shop_app_api_th_s/shared/network/remote/web_services.dart';

class AddProduct {
  Future<ProductModel> addProduct({required String title,
    required String price,
    required String description,
    required String image,
    required String category}) async {
    Map<String, dynamic> data =
    await Api().post(url: 'https://fakestoreapi.com/products',body: {
    'title': title,
    'price': price,
    'description': description,
    'image': image,
    'category': category,
    });

    return ProductModel.fromJson(data);
  }
}