import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myname/Utils/Notifier/FavouriteListNotifier.dart';
import '../Config/config.dart';
import '../Models/productModel/product.dart';
import '../Pages/ProductDescribtion.dart';

class SecondProductCart extends ConsumerWidget {
  final ProductModel? model;
  SecondProductCart({super.key, required this.model});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final favnav  =  ref.read(FavouriteListProvider.notifier);
    return Container(
      width: 150,
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow:const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                 ClipRRect(
                  borderRadius : const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDescription(model: model)));

                    },
                    child: Image.network(
                      model!.fullImagePathProduct,
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.grey.withOpacity(0.2),
                          child: const Icon(Icons.image, color: Colors.grey),
                        );
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      '15% off',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        model!.ProductName,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                     const  SizedBox(height: 5),
                      Text(
                        '${Config.currencySign} ${model!.ProductPrice ?? 'N/A'}',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                 

                    ],
                  ),
                  IconButton(onPressed: (){
                    favnav.addAndRemoveFavourite(model!);
                  }, icon: favnav.products.contains(model!) ? Icon(Icons.favorite) :Icon(Icons.favorite_border))

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
