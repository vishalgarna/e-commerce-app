import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../Models/ProductFilterModel/Productfiltermodel.dart';
import '../../Models/paginationmodel/pagination.dart';

class ProductFilterNotifier extends StateNotifier<ProductFilterModel>{
  ProductFilterNotifier():super(ProductFilterModel(paginationmodel: PaginationModel(page: 1, pagesize: 5)));

  // this Product notifier is use When any user use filter on product then the
  // change state state using this product filter model  instance
   void SetProdcutonFilter  (ProductFilterModel model){

     state = model;
   }

}