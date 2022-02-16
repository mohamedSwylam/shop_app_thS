import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_api_th_s/layout/cubit/states.dart';
import 'package:shop_app_api_th_s/models/product_model.dart';
import 'package:shop_app_api_th_s/services/update_product.dart';
import 'package:shop_app_api_th_s/shared/network/remote/web_services.dart';


class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());
  static AppCubit get(context) => BlocProvider.of(context);

  bool isLoading = false;
  String? title,description,image;
  int? price;

   updateProduct (ProductModel product)  {
      isLoading = true;
      emit(UpdateProductInitialState());
      try {
         UpdateProduct().updateProduct(
            id: product.id,
            title: title == null ? product.title : title!,
            price: price == null ? product.price : price!,
            description: description == null ? product.description : description!,
            image: image == null ? product.image : image!,
            category: product.category
        );
      } catch (e) {
        print(e.toString());
        emit(UpdateProductErrorState());
      }
      isLoading = false;
      emit(UpdateProductSuccessState());
  }
}