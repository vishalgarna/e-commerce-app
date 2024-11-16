
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Models/productModel/product.dart';
import '../Services/ApiServices.dart';
import 'Widget.productCart.dart';

class RelatedProductWidget extends ConsumerWidget {
  const RelatedProductWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return loadRelatedProduct(context);
  }

  Widget loadRelatedProduct(BuildContext context)
  {
    final services = Apiservices();
    return FutureBuilder( future: services.GetAllProducts(), // Your future method
      builder: (context, snapshot)
    {if (snapshot.connectionState == ConnectionState.waiting)
    {
      return const CircularProgressIndicator(); // Show loading indicator
     }
      else if (snapshot.hasError)
      { return Text('Error: ${snapshot.error}'); // Show error message
   } else if (snapshot.hasData)
   {
        List<ProductModel> products = snapshot.data as List<ProductModel>;
      return _buildRelatedProduct(products); // Show data
   }
      else
      { return const Text('No products found'); // Handle empty data
   }
      }, ); }

  Widget _buildRelatedProduct(List<ProductModel> model) {
    return  SizedBox(
      height: 300, // Adjust height as needed
      child: ListView.builder(
        itemCount: model.length,
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          var data = model[index];
          return WidgetProductCart(model: data);
        },
      ),
    );
  }
}
