import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import '../Config/config.dart';
import '../Models/CartModel.dart/Cart.dart';
import '../Models/ProductFilterModel/Productfiltermodel.dart';
import '../Models/SliderModel/slider.dart';
import '../Models/category.model/category.dart';
import '../Models/productModel/product.dart';



// ye class hum providder me pass kar
// rhae taaki dure provider iss listen aur acess kar sake

final apiservice = Provider((ref) => Apiservices());

 class Apiservices {

   // create globsal client object ;
   var client = http.Client();

   // this fun is fetchAllCategories
   Future<List<CategoryModel>?> GetCategories() async {
     // Map<String, String> requestHeaders = {
     //   'content-type': 'application/json'
     // };

     //var url = Uri.http(Config.baseurl+Config.categoryurl);

     var response = await http.get(
         Uri.parse('http://192.168.169.166:3000/categories'));

     if (response.statusCode == 200) {
       var data = jsonDecode(response.body);

       return Categoryfromjson(data['data']);
     }
     else {
       return null;
     }
   }

   // this Function is get All Products frommnm,
   Future<List<ProductModel>?> GetProductsByCategory(
       ProductFilterModel productFilterModel) async {
     Map<String, String> requestheaders = {
       'content-type': 'application/json'
     };

     // give queryString To Provide Page and Pagesize
     // Map<String, String> queryString = {
     //   // 'page' : pagination.page.toString(),
     //   // 'pagesize' : pagination.pagesize.toString(),
     //
     // };
     String id = productFilterModel.CategoryId ?? '';

     var response = await http.get(
         Uri.parse(Config.baseurl + Config.producturlByCategory + id),
         headers: requestheaders);
     if (response.statusCode == 200) {
       var data = jsonDecode(response.body);
       // productfrojons this fun is take dynamic
       // data and convert json object into dart
       // objext  one by one
       return productfromjson(data['data']);
     }

     else {

       return null;
     }
   }

   // this api for register user
   Future<bool> registeruser(String name, String email, String password) async {
     Map<String, String> requestheaders = {
       'content-Type': 'application/json'
     };

     var response = await http.post(
         body: jsonEncode({
           'UserName': name,
           'UserEmail': email,
           'UserPassword': password
         }),
         Uri.parse(Config.baseurl + Config.registeruser),
         headers: requestheaders);

     if (response.statusCode == 200) {
       return true;
     }

     else {
       return false;
     }
   }


   Future<bool> loginuser(String email, String password) async {
     // create shareprefrence for storing token in cache;


     Map<String, String> requestheaders = {
       'content-Type': 'application/json'
     };

     var response = await http.post(
         body: jsonEncode({
           'UserEmail': email,
           'UserPassword': password
         }),
         Uri.parse(Config.baseurl + Config.loginuser), headers: requestheaders);

     if (response.statusCode == 200) {
      // var data = jsonDecode(response.body);

       //set the token in shareprefrernces
      // var token = data['data']['token'] ?? 'obejxtvalue';
       // await pref.setString('token', token);

       return true;
     }

     else {
       return false;
     }
   }

   // get single productdeatils fun
   Future<ProductModel ?> getProductById(String productid) async {
     Map<String, String> requestheaders = {
       'content-type': 'application/json'
     };
     // give queryString To Provide Page and Pagesize
     // Map<String, String> queryString = {
     //   // 'page' : pagination.page.toString(),
     //   // 'pagesize' : pagination.pagesize.toString(),
     //
     // };
     var response = await http.get(
         Uri.parse('http://192.168.169.166:3000/products/${productid}'),
         headers: requestheaders);
     if (response.statusCode == 200) {
       var data = jsonDecode(response.body);
       // productfrojons this fun is take dynamic
       // data and convert json object into dart
       // objext  one by one

       return data;
     }

     else {

       return null;
     }
   }

   Future<List<ProductModel>?>  GetAllProducts() async {
     Map<String, String> requestHeaders = { 'content-type': 'application/json'};
     var response = await http.get(
       Uri.parse('http://192.168.169.166:3000/products'),
       headers: requestHeaders,);

     if (response.statusCode == 200) {
       var data = jsonDecode(response.body);
       // productfromjson is a function to convert json to dart objects

       return productfromjson(data['data']);
     }
     else {
       return null;
     }
   }

   Future<List<slidermodel>?> getslider() async {
     var response = await http.get(
         Uri.parse('http://192.168.169.166:3000/slider'));

     if (response.statusCode == 200) {
       var data = jsonDecode(response.body);
       // productfromjson is a function to convert json to dart objects
       return sliderFromJson(data['data']);
     }
     else {
       return null;
     }
   }

   // add new cart
   Future<bool>AddtoCart(productid, qty) async {
     // to get token from the sharepref
    // SharedPreferences pref = await SharedPreferences.getInstance();
     //final token = pref.getString('token');
     Map<String, String> requestheaders = {
       'content-type': 'application/json',
         'userid' : '6727b27d1261135d0e17c733',
     };

     var response = await http.post(
         Uri.parse(Config.baseurl + Config.cartapi), headers: requestheaders,
         body: jsonEncode({
           'products': [ {
             'product': productid,
             'qty': qty
           }
           ]}
         ));
     if (response.statusCode == 200) {

       return true;
     }
     else {
       return false;
     }
   }

  // get cart function

   Future<CartModel ?> getCarts() async {
     Map<String, String> requestHeaders = {
       'content-type': 'application/json',
     'userid' : '6727b27d1261135d0e17c733'};
     var response = await http.get(
       Uri.parse('http://192.168.169.166:3000/carts'),
       headers: requestHeaders,);

     if (response.statusCode == 200) {
       var data = jsonDecode(response.body);
       // productfromjson is a function to convert json to dart objects

       return CartModel.fromJson(data['data']);
     }
     else {
       return null;
     }
   }


   Future<bool> DelteCart (productid ,qty ) async   {
     // to get token from the sharepref
 //    SharedPreferences pref = await SharedPreferences.getInstance();
   //  final token = pref.getString('token');

     print(productid);
     print(qty);
     Map<String, String> requestheaders = {
       'content-type': 'application/json',
       'userid' : '6727b27d1261135d0e17c733'
  //     'authorization': token.toString(),
     };

     var response = await http.delete(
         Uri.parse(Config.baseurl + Config.cartapi), headers: requestheaders,
         body: jsonEncode({

             'productId': productid,
             'qty': qty,

           }
         ));
     if (response.statusCode == 200) {

    return true ;
     }
     else {
       return false ;
     }
   }


//    // this function make order is create payment gateway and make a payment to taking user credentials
//    Future <Map<String, dynamic>?> MakeOrder (
//        cardName,
//        userId,
//        cardNumber,
//        cardExpMonth,
//        card_ExpYear,
//        card_CVC,
//        amount
//        ) async
//    {
//
//
//      Map<String,String> requestHeader = {
//        'content-type' : 'applocation/json'
//      };
//
//      var response = await http.post(
//          body: jsonEncode( {
//            "userId" : userId,
//            "card_Name" : cardName ,
//            "card_Number" :cardNumber ,
//            "cardExpMonth" : cardExpMonth,
//            "card_ExpYear" : card_ExpYear,
//            "card_CVC" : card_CVC,
//            "amount" :amount
//          }),
//          Uri.parse(Config.baseurl+Config.orderapi) , headers:requestHeader);
//
//
//      var data  = jsonDecode(response.body);
//
//      // empty objet for handling and showe error message
//     Map<String , dynamic> responsemodel = {};
//
//      if(response.statusCode == 200){
//        responsemodel['message '] = data ['message'];
//        responsemodel['data'] = OrderModel.fromJson(data['data']);
//
//        return responsemodel;
//      }
//
//      else{
//        responsemodel['message '] = data ['message'];
//        return responsemodel;
//      }
//
//    }
// Future <bool ?> processPayment (
//   orderId,
//     transactionId
//     ) async
// {
//
//   Map<String,String> requestHeader = {
//    'content-type' : 'applocation/json'
//   };
//
//   var response = await http.put(
//     body: jsonEncode( {
//       "orderId" : orderId,
//       "Sstatus" : "success" ,
//       "transaction_id" :transactionId ,
//     }),
//       Uri.parse(Config.baseurl+Config.orderapi) , headers:requestHeader);
//     if(response.statusCode == 200){
//       return true;
//     }
//
//     else{
//       return false;
//     }
//
// }
//
//    Future <bool ?> updateOrder (
//        orderId,
//        transaction_id
//        ) async
//    {
//
//      Map<String,String> requestHeader = {
//        'content-type' : 'applocation/json'
//      };
//
//      var response = await http.put(
//          body: jsonEncode( {
//         "orderId" : orderId,
//         "transaction_id" : transaction_id
//          }),
//          Uri.parse(Config.baseurl+Config.orderapi) , headers:requestHeader);
//      if(response.statusCode == 200){
//        return true;
//      }
//
//      else{
//        return false;
//      }
//
//    }

 }

