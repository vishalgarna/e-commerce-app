import 'package:flutter/material.dart';
import 'package:myname/Models/productModel/product.dart';
import 'package:myname/Widgets/Text.Widget.dart';

import '../Config/config.dart';
import '../Models/CARTProductModel/CartProducts.dart';
import 'WidgetCustomSteeper.dart';



class CartWidgetProduct extends StatelessWidget {

  const CartWidgetProduct({super.key ,
    required this.model ,
    this.onQtyUpdate ,
   this.onItemRemove});

  // In this example, onQtyUpdate and onItemRemove are used as
  // callbacks that perform actions when the quantity is updated or the item is removed.
  // These callbacks are passed as parameters when creating an instance of the CartItem widget.

  final CartProductModel model ;
  // iska mtlb hai ki ye function ko hold kar skate hai aur null ko bhi jaise int datatype ki tearr idtme l ho raheh ai
  final Function ? onQtyUpdate;
  final Function ? onItemRemove ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        elevation: 0,
        child: Container(
          height: 140,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(20),
              color: Colors.white,

          ),

          child: _CartItemUi(context),
        ),
      ),
    );
  }

  Widget _CartItemUi (BuildContext context){

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              
              height:  100,
              width: 100,
              image: NetworkImage(model.product.fullImagePathProduct,) 
              , fit: BoxFit.fill,
              errorBuilder: (context , error , stacktrace){
                return  const Icon(Icons.image);
              },
            ),
          ),
        ),

        SizedBox(width: 230,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(title: model.product.ProductName , fontsize: 20,),
              TextWidget(title: "${Config.currencySign} ${model.product.ProductPrice.toString()} ", fontsize: 14),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomSteeper(
                      lowerlimit: 1,
                      upperlimit: 10,
                      value: model.qty.toInt(),
                      iconsize: 8,

                      onChanged: (value){
                        onQtyUpdate!( model , value['qty'] , value['type']);
                      },
                      stepValue: 1),
                  const SizedBox(width: 70,),
                  GestureDetector(
                    child: const Icon(

                      Icons.delete , color: Colors.red,),
                    onTap: (){
                      onItemRemove!(model );
                    },
                  )

                ],

              )
            ],
          ),
        ),)
      ],
    );

  }
}
