import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shop_app_api_th_s/models/product_model.dart';
import 'package:shop_app_api_th_s/shared/network/remote/web_services.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url:'https://fakestoreapi.com/products');
    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }

    return productsList;
  }
}
