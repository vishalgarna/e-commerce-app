import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myname/Config/config.dart';
import 'package:myname/Models/CARTProductModel/CartProducts.dart';
import 'package:myname/Models/productModel/product.dart';
import 'package:myname/Pages/HomeScreen.dart';
import 'package:myname/Pages/ProductDescribtion.dart';
import 'package:myname/Utils/Notifier/FavouriteListNotifier.dart';
import 'package:myname/Widgets/Text.Widget.dart';

class Favouritepage extends ConsumerWidget {
  const Favouritepage({super.key});

  @override
  Widget build(BuildContext context , WidgetRef ref) {
    return SafeArea(child: 
        Scaffold(
          appBar: AppBar(
            title: const Text('favourites'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Consumer(
                  builder: ( context,ref , child ){
                    final favprop = ref.watch(FavouriteListProvider);
                    final favnsv = ref.read(FavouriteListProvider);
    if(favprop.products.isNotEmpty){
      return ListView.builder(
          itemCount: favprop.products.length,
          itemBuilder: (context, index){
            var data = favprop.products[index];
            return InkWell(
              onTap: (){
     Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDescription(model: data)));
              },
              child: Card(

                  color: Colors.grey.shade100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          height: 100,
                          width:100,
                          data.fullImagePathProduct,
                          errorBuilder: (context , serror, stract){
                            return Icon(Icons.image);
                          },
                        ),

                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(title: 'Name: ${data.ProductName}', fontsize: 15),
                          SizedBox(height: 20,),
                          TextWidget(title: 'Price: ${Config.currencySign}${data.ProductPrice.toString()}', fontsize: 15),
                        ],
                      ),

                      IconButton(onPressed: (){
                        favnsv.addAndRemoveFavourite(data);
                      }, icon: Icon(Icons.favorite))


                    ],
                  )
              ),
            );
          });
    }
    else{
      return Center(child: TextWidget(title: 'No Favorites :)', fontsize: 30,));

    }

                  }


                  ),
            ),
          )
        )
    );
  }
}
