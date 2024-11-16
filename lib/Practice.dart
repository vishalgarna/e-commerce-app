import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myname/Providers/CartProvider.dart';
import 'package:myname/Services/ApiServices.dart';

class PracticePage extends StatelessWidget {
  const PracticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar:  AppBar(
          title: const Text('data'),
        ),
        backgroundColor: Colors.grey[200],
        body: Container(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Consumer(builder: (context , ref , child){
                final cartstate = ref.watch(CartProvider);

                 if(cartstate.cartmodel == null){
                   return const LinearProgressIndicator();
                 }
                 else if (cartstate.cartmodel!.products.isEmpty){
                   return const Center(child: Text('No Products'),);
                 }

                 else{
                   return Center(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Card(child: Text(cartstate.cartmodel!.cartId),),

                         SizedBox(height: 30,child:    ElevatedButton(onPressed: (){
                           final cartstate = ref.watch(CartProvider.notifier);
                           cartstate.RemoveCartItem("671f71d685a02cf722e0c428" , 8);
                         }, child: Text('Please PRess')),)
                       ],
                     ),
                   );
                 }


              }),

            ],
          ),
        ),
      ),
    );
  }
}
