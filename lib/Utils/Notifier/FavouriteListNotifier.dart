

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myname/Models/productModel/product.dart';

class FavouriteNotifier extends ChangeNotifier{

  List<ProductModel> products = [];

  void addAndRemoveFavourite (ProductModel model){
    if(products.contains(model)){
      products.remove(model);
    }
    else{
      products.add(model);
    }
    notifyListeners();
  }
}



final FavouriteListProvider = ChangeNotifierProvider<FavouriteNotifier>((ref)=>FavouriteNotifier());