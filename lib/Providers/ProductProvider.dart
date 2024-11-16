import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Models/ProductFilterModel/Productfiltermodel.dart';
import '../Models/productModel/product.dart';
import '../Services/ApiServices.dart';
import '../Utils/Notifier/ProductFilterNotifier.dart';
import '../Utils/Notifier/ProductNoftifier.dart';
import '../Utils/State/ProductState.dart';


//  1 ProductFilterNotifier: Ye ek StateNotifier class hai jo state ko manage karta hai.
//
// 2  ProductFilterModel: Ye state ka type hai jo StateNotifier ke dwara manage ki jaati hai.

//Inko use karne ka matlab ye hai ki ProductFilterNotifier
// ke dwara jo state manage ki ja rahi hai, wo ProductFilterModel
// type ki hogi. Iska fayda ye hai ki aap state management me ek achi
// aur modular approach rakh sakte hain, jisme ek notifier hai
// jo state ko manage karta hai aur ek model hai jo state ko define karta hai.

final ProduFilterProvider = StateNotifierProvider<ProductFilterNotifier, ProductFilterModel>

  ((ref){
    return  ProductFilterNotifier();
  });




// this provider when we use when user perform sorting and latest


// Dependency Injection: ProductNoftifier ko
// create karte waqt, apiservice aur ProduFilterProvider
// ki instances inject ki ja rahi hain. Isse ProductNoftifier apne
// dependencies ko directly access kar sakta hai.
//
// State Management:
// ProductnotifierProvider ke through
// , ProductState ko manage aur update kiya ja raha hai.
final ProductnotifierProvider = StateNotifierProvider<ProductNoftifier , ProductState>(
        (ref)=>ProductNoftifier(
           ref.watch(apiservice) ,
            ref.watch(ProduFilterProvider)));



final ProductdescribtionProvider = FutureProvider.family<ProductModel? ,String>((ref ,productid){

  final repo = ref.watch(apiservice);
  return repo.getProductById(productid);

});

// final RelatedProductProvider = FutureProvider.family<List<ProductModel>?,ProductFilterModel>(( ref, productfiltermodel){
//   final repo = ref.watch(apiservice);
//   return repo.GetAllProducts(productfiltermodel);
// });

// get all products provider

final AllProductsPorivder = FutureProvider<List<ProductModel>?>((ref){
  final repo = ref.watch(apiservice);
  return repo.GetAllProducts();
});