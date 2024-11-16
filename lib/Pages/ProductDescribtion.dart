import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myname/Pages/CartPage.dart';
import '../Models/productModel/product.dart';
import '../Providers/CartProvider.dart';
import '../Providers/ProductProvider.dart';
import '../Widgets/SecondProductCart.dart';
import '../Widgets/Text.Widget.dart';
import '../Widgets/WidgetCustomSteeper.dart';
import '../Widgets/WidgetsColExpandCard.dart';


class ProductDescription extends ConsumerStatefulWidget {
  final ProductModel? model;

  ProductDescription({super.key ,required this.model });

  @override
  _ProductDescriptionState createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends ConsumerState<ProductDescription> {
int qty = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               const Text('Product Details'),
               InkWell
                 (
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) =>const  Cartpage()));
                 },
                 child: const Padding(
                   padding:  EdgeInsets.only(right: 8.0),
                   child:  Icon(
                     size:30,
                       Icons.shopping_cart),
                 ),)
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                _ProductDetails(widget.model! , ref),
               const  SizedBox(height: 20,),
               SingleChildScrollView(
                 child: SizedBox(
                   height: 450,
                     child: buildRelatedproduct(ref)),
               )

              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget buildProductDetails(WidgetRef ref) {
  //   final product = ref.watch(ProductdescribtionProvider(widget.productId));
  //   return product.when(
  //     data: (data) => Column(
  //       children: [
  //         _ProductDetails(data!),
  //         RelatedProductWidget( relatedproductid:data.RelatedProducts!,),
  //       ],
  //     ),
  //     error: (error, stackTrace) => Text(error.toString()),
  //     loading: () => CircularProgressIndicator(),
  //   );
  // }

  Widget _ProductDetails(ProductModel model , WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: const [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),

            child:  Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                    model.fullImagePathProduct ,
                errorBuilder: (cotext , error , stract){
                      return const Icon(Icons.image);
                },),

              )
            ),
          ),
        ),
       const  SizedBox(height: 20),
        TextWidget(title: model.ProductName, fontsize: 20),
        const SizedBox(height: 20),
        Text(
        ' SKU: ${model.ProductSku!}', style:const  TextStyle(fontSize: 15),),

        Row(
          children: [
            Text(  'Status: ${model.ProductStatus!}' , style: const TextStyle(fontSize: 15),),
           const  SizedBox(width: 10),
            TextButton.icon(
              onPressed: () {},
              icon:const  Icon(Icons.share),
              label: const Text('Share'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomSteeper(
              lowerlimit: 1,
              upperlimit: 20,
              value: qty,
              iconsize: 14,
              onChanged: (value) {
                qty = value['qty'];
              },
              stepValue: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.green,
                ),
                onPressed: () {
                  final cartViewModel = ref.read(CartProvider.notifier);
                cartViewModel.AddcartItems(model.Productid, qty);
                },
                icon:const  Icon(Icons.shopping_basket_sharp),
                label: const Text('Add To Cart'),
              ),
            ),

          ],
        ),
       const  SizedBox(height: 10,),
        WidgetColexpandCard(title: 'Description', content: model.ProductDescribtion!),


      ],
    );
  }
}

Widget buildRelatedproduct (WidgetRef ref){
  final realtedprovider = ref.watch(AllProductsPorivder);
  return realtedprovider.when(
      data: (data)=>createRelatesProducts(data!),
      error: (error, strac)=>Center(child: Text(error.toString()),),
      loading: ()=>const CircularProgressIndicator());
}

Widget createRelatesProducts (List<ProductModel> model){
  return GridView.builder(
    itemCount: model.length,
    gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: 10,
     crossAxisSpacing: 10),
      itemBuilder:(cotext , index){
  var data = model[index];
       return SecondProductCart(model:data );
      });

}