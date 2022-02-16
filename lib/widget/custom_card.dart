import 'package:flutter/material.dart';
import 'package:shop_app_api_th_s/models/product_model.dart';
import 'package:shop_app_api_th_s/modules/update_product_screen.dart';
import 'package:shop_app_api_th_s/shared/components/components.dart';

class CustomCard extends StatelessWidget {
  ProductModel product;
  CustomCard({
    required this.product,
    Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        navigateTo(
            context,
            UpdateProductScreen(
              product: product,
            ));
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    color: Colors.grey.withOpacity(0.2),
                    offset: Offset(10, 10),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        product.title,
                        maxLines: 1,
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('${product.price}',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 18)),
                          Spacer(),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ),
              )),
          Positioned(
            bottom: 85,
            right: 32,
            child: Image.network(
              '${product.image}',
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
