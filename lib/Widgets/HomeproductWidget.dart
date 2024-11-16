
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Models/productModel/product.dart';
import '../Providers/ProductProvider.dart';
import 'Text.Widget.dart';
import 'Widget.productCart.dart';

class Homeproductwidget extends ConsumerWidget {
  const Homeproductwidget({super.key});

  @override
  Widget build(BuildContext context , WidgetRef ref) {
    return  Padding(
         padding: const EdgeInsets.all(8.0),
         child: SizedBox(
               height: 330,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(title: 'Top 10 Products', fontsize: 20),
              const SizedBox(height: 10,),
              loadProductWidget(ref)
            ],
          )

               ),
    );

  }

  Widget loadProductWidget (WidgetRef ref){
    final products = ref.watch(AllProductsPorivder);
    return products.when(
        data: (data)=>buildProducts(data!),
        error: (error , strac) => Text(error.toString()),
        loading: ()=> const LinearProgressIndicator());
  }

  Widget buildProducts (List<ProductModel> model){

    return Expanded(
      child:  ListView.builder(
        itemCount: model.length,
        physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context , index){
        var data =  model[index];
          return WidgetProductCart(model: data);
      }),
    );

  }
}
