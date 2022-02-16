import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_api_th_s/layout/cubit/cubit.dart';
import 'package:shop_app_api_th_s/layout/cubit/states.dart';
import 'package:shop_app_api_th_s/models/product_model.dart';
import 'package:shop_app_api_th_s/services/get_all_products.dart';
import 'package:shop_app_api_th_s/shared/components/custom_buttom.dart';
import 'package:shop_app_api_th_s/shared/components/custom_text_field.dart';
import 'package:shop_app_api_th_s/widget/custom_card.dart';


class UpdateProductScreen extends StatelessWidget {
  final ProductModel product;
  const UpdateProductScreen({required this.product});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Update product',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            elevation: 0.0,
            actions: [
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  CustomTextField(
                    hintText: 'Title',
                    onChanged: (value){
                      AppCubit.get(context).title=value;
                    },
                  ),
                  SizedBox(height: 15,),
                  CustomTextField(
                    hintText: 'Description',
                    onChanged: (value){
                      AppCubit.get(context).description=value;
                    },
                  ),
                  SizedBox(height: 15,),
                  CustomTextField(
                    hintText: 'Price',
                    onChanged: (value){
                      AppCubit.get(context).price=int.parse(value);
                    },
                  ),
                  SizedBox(height: 15,),
                  CustomTextField(
                    hintText: 'image',
                    onChanged: (value){
                      AppCubit.get(context).image=value;
                    },
                  ),
                  SizedBox(height: 50,),
                  CustomButon(text: 'Update',onTap: AppCubit.get(context).updateProduct(product),),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
