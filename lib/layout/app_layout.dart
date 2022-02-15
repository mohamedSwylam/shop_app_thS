import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_api_th_s/models/product_model.dart';
import 'package:shop_app_api_th_s/services/get_all_products.dart';
import 'package:shop_app_api_th_s/widget/custom_card.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class AppLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'New Trend',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            elevation: 0.0,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16,top: 50),
            child: FutureBuilder<List <ProductModel>>(
              future: AllProductsService().getAllProducts(),
              builder: (context,snapshot){
                if(snapshot.hasData){
                  List<ProductModel> products=snapshot.data!;
                  return Container();
                }
                else{
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        );
      },
    );
  }
}
