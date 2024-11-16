import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../Models/ProductFilterModel/Productfiltermodel.dart';
import '../../Models/paginationmodel/pagination.dart';
import '../../Services/ApiServices.dart';
import '../State/ProductState.dart';


//This class ProductByCategory extends StateNotifier with a type of ProductState.
// This means ProductByCategory is managing the state of ProductState.
class ProductNoftifier extends StateNotifier<ProductState>{
  final Apiservices _apiservices;
  final ProductFilterModel _filterModel;

  // int this line we provide inital state of any state
  ProductNoftifier(this._apiservices, this._filterModel ):super(ProductState());

  int _page = 1;

  Future<void> getproducts() async {
    if (state.isLoading || !state.hasnext) {
      return;
    }

    state = state.copyWith(isLoading: true);

    var filtermodel = _filterModel.copyWith(
      paginationmodel: PaginationModel(page: _page, pagesize: 10),
    );

    if (filtermodel.CategoryId == null) {
      // Handle the null case appropriately
      state = state.copyWith(isLoading: false);
      return;
    }

    final products = await _apiservices.GetProductsByCategory(filtermodel);

    if (products == null) {
      state = state.copyWith(isLoading: false);
      return;
    }

    final newproduct = [...state.products, ...products];
    if (products.length % 10 != 0 || products.isEmpty) {
      state = state.copyWith(hasnext: false);
    }

    state = state.copyWith(products: newproduct);
    _page++;

    state = state.copyWith(isLoading: false);
  }



  //  if user refresh the page then rest all the filter  on the products

Future<void> RefreshPage ()async{

    state = state.copyWith(products: [] , hasnext:  false);

    _page = 1;

    await getproducts();

}

}