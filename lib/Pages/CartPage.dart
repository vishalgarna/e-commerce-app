import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myname/Models/CartModel.dart/Cart.dart';
import '../Config/config.dart';
import '../Models/CARTProductModel/CartProducts.dart';
import '../Providers/CartProvider.dart';
import '../Widgets/CartWidgetProduct.dart';
import '../Widgets/Text.Widget.dart';

class Cartpage extends ConsumerStatefulWidget {
  const Cartpage({super.key});

  @override
  _CartpageState createState() => _CartpageState();
}

class _CartpageState extends ConsumerState<Cartpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CheckoutBottoNav(),
      appBar: AppBar(
        title:  const Text('Cart_Items'),
      ),

      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(child: _cartList(ref))
        ],
      ) ,
    );
  }

  Widget buildcartItems (List<CartProductModel> products) {
    // list cartproduct aaenge jisme
    return ListView.builder(
        physics: const ClampingScrollPhysics(),
         shrinkWrap: true,
         itemCount: products.length,
        itemBuilder: (context , index){

          return CartWidgetProduct(
            model: products[index],
          onQtyUpdate: (CartProductModel model , qty , type){

            final carVIewmodel = ref.read(CartProvider.notifier);
            carVIewmodel.UpdateCartitems(model.product.Productid, qty, type);

          },
            onItemRemove:(CartProductModel model){

              final carVIewmodel = ref.read(CartProvider.notifier);
              carVIewmodel.RemoveCartItem(model.product.Productid , model.qty );

            },
          );

    });
  }

  // ya pe hume state ko get kar rahe hai
  // jo bhi cureent state wow mil jayehgi car ki

  Widget _cartList (WidgetRef ref){

    final carstate = ref.watch(CartProvider);
    // agar state null hui to linearprogress indicatior
    if(carstate.cartmodel == null){
      return const LinearProgressIndicator();
    }
    //
    if(carstate.cartmodel!.products.isEmpty){
      return Center(child: TextWidget(title: 'No product are Found', fontsize: 23,),);
    }
    return buildcartItems(carstate.cartmodel!.products ,);
  }
}

class CheckoutBottoNav extends ConsumerWidget{
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final carptovider = ref.watch(CartProvider);

     if(carptovider.cartmodel != null){
     return carptovider.cartmodel!.products.isNotEmpty ?
      Container(
        margin: EdgeInsets.only(bottom: 7),
        height: 70,
        color: Colors.grey[300],
        child: Row(
          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Total: ${Config.currencySign} ${carptovider.cartmodel!.grandtotal}' , style: TextStyle(fontSize:18 ),
              ),
            ),
           Padding(
             padding: const EdgeInsets.only(right: 16),
             child: ElevatedButton(

                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.green.withOpacity(0.7))
                ),
                  onPressed: (){}, child: const Text('Checkout ',style: TextStyle(fontSize:14  , fontWeight: FontWeight.bold , color: Colors.black))),
           )
          ],
        ),
      ) : const SizedBox(height: 10,);
    }

    else{
      return Container();
    }

  }


}

