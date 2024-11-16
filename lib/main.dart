
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myname/Pages/Defaultpage.dart';
import 'package:myname/Practice.dart';

import 'Pages/HomeScreen.dart';
import 'Pages/LoginScreen.dart';
import 'Pages/ProductsScreen.dart';
import 'Pages/RegisterPage.dart';

//WidgetsFlutterBinding.ensureInitialized(); ensures that the Flutter framework is properly initialized
// before you run any other code that relies on it. It’s typically used when you need to do initialization
// work that requires access to Flutter’s Binding (e.g., accessing platform channels, initializing plugins).

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferences pref = await SharedPreferences.getInstance();
  // String? token = pref.getString('token');
  runApp(ProviderScope(child: MyApp()));
}
// What does super(key: key) do?
// When you use super(key: key) in a constructor,
//you are calling the constructor of the parent class (StatelessWidget
// in this case). This passes the key parameter up to the parent class,
// which helps Flutter know the unique identity of each widget in the widget tree.
//
// Why is this important?
// Inheritance: If your class inherits from another class,
// you might need to pass some parameters up to the parent class so
// it can do its own initial setup.
//
// Widget Key: Passing the key helps Flutter
// keep track of each widget, especially during updates.
// This ensures smooth and efficient rendering.

class MyApp extends StatelessWidget {
  // final String ? token;
  // // Constructor to get token from app
  // MyApp({
  //   // @required this.token,
  //   Key? key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme:  ThemeData(
        primaryColor: Colors.grey,
        buttonTheme:  const ButtonThemeData(
          buttonColor: Colors.blueAccent,
          textTheme: ButtonTextTheme.primary,
        ),
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[200],
        ),
      ),


      initialRoute: '/default',
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) =>const  HomeScreen(),
        '/default': (BuildContext context) => const Defaultpage(),//const Defaultpage(),
        '/login': (BuildContext context) => const Loginscreen(),
        '/register': (BuildContext context) =>const  RegisterScreen(),
        '/products': (BuildContext context) =>  Productsscreen(),

      },
    );
  }
  //
  // bool validtoken( var token){
  //
  //   if(token.isEmpty){
  //     return false;
  //   }
  //   else if (token != null && !JwtDecoder.isExpired(token) ){
  //      return true;
  //   }
  //
  //   return false;
  // }
}
