

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myname/Models/category.model/category.dart';
import 'package:myname/Models/productModel/product.dart';
import '../../Models/CARTProductModel/CartProducts.dart';
import '../../Services/ApiServices.dart';
import '../State/CartState.dart';


class CartNotifier extends StateNotifier<CartState>{
 final  Apiservices _apiservices;
  CartNotifier(this._apiservices) :super(CartState()){
    GetCartItems();
  }


  Future<void> GetCartItems() async {
 state = state.copyWith(isloading: true);

 final newcartdata = await _apiservices.getCarts();
 // Update state with new cart data (list of cart items)
 state = state.copyWith(cartmodel: newcartdata, isloading: false);
 }

 // Other methods...




 Future<void> AddcartItems(productid, qty)async{

    await _apiservices.AddtoCart(productid, qty);
    GetCartItems();

  }
// Define a default CartProductModel to return in case not found
  final defaultCartProduct = CartProductModel(
    product: ProductModel(Productid: '-1', ProductName: '', ProductCategory: CategoryModel(id: '', categoryName: '', categoryImage: ''), ProductImage: '', ProductSku: '', ProductStatus: '', ProductDescribtion: '', ProductPrice: null), // Dummy default values
    qty: 0,
  );

  Future<void> RemoveCartItem(productId,qty) async {
    await _apiservices.DelteCart(productId, qty);

    // Find the cart item that matches the productId
    CartProductModel isCartItemExist = state.cartmodel!.products.firstWhere(
            (element) => element.product.Productid == productId,
        orElse: () => defaultCartProduct // Return default value instead of null
    );

    // Check if the cart item exists and is not the default value
    if (isCartItemExist.product.Productid != -1) {
      var updatedItems = state.cartmodel!.copyWith();

      // Remove the item from the products
      List<CartProductModel> modifylIst = List.from(updatedItems.products);

      modifylIst.remove(isCartItemExist);
       updatedItems = updatedItems.copyWith(products: modifylIst);
      // Update the state with the modified cart model
      state = state.copyWith(cartmodel: updatedItems);
    } else {
      print("Product with id $productId not found in the cart.");
    }
  }



  Future<void> UpdateCartitems(productId,  qty, String type) async {
    var carItems = state.cartmodel!.products.firstWhere(
          (element) => element.product.Productid == productId,
    );

    var updatedcaritems = state.cartmodel;

    if (type == '-') {
      await _apiservices.DelteCart(productId, 1);

      if (carItems.qty > 1) {
        CartProductModel cartproducts = CartProductModel(
          product: carItems.product,
          qty: carItems.qty - 1,
        );

        // Create a modifiable list from the unmodifiable list
        List<CartProductModel> modifiableProducts = List.from(updatedcaritems!.products);

        // Remove and add the updated product in the modifiable list
        modifiableProducts.remove(carItems);
        modifiableProducts.add(cartproducts);

        // Update the original list with the modified list
        updatedcaritems = updatedcaritems.copyWith(products: modifiableProducts);
      } else {
        List<CartProductModel> modifiableProducts = List.from(updatedcaritems!.products);
        modifiableProducts.remove(carItems);
        updatedcaritems = updatedcaritems.copyWith(products: modifiableProducts);
      }
    } else {
      await _apiservices.AddtoCart(productId, 1);

      CartProductModel carProdut = CartProductModel(
        product: carItems.product,
        qty: carItems.qty + 1,
      );

      // Create a modifiable list from the unmodifiable list
      List<CartProductModel> modifiableProducts = List.from(updatedcaritems!.products);

      // Modify the list
      modifiableProducts.remove(carItems);
      modifiableProducts.add(carProdut);

      // Update the original list with the modified list
      updatedcaritems = updatedcaritems.copyWith(products: modifiableProducts);
    }

    // Update the state with the modified cart model
    state = state.copyWith(cartmodel: updatedcaritems);
  }


}