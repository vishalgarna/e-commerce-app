import 'package:flutter/material.dart';
import 'package:myname/Pages/AdminPage.dart';
import 'package:myname/Pages/CartPage.dart';
import 'package:myname/Pages/favouritePage.dart';
import 'HomeScreen.dart';
import 'LoginScreen.dart';
import 'RegisterPage.dart';

class Defaultpage extends StatefulWidget {
  const Defaultpage({super.key});

  @override
  State<Defaultpage> createState() => _DefaultpageState();
}

class _DefaultpageState extends State<Defaultpage> {
  int _index = 0;

  List<Widget> pages = [
  const  HomeScreen(),
    const Cartpage(),
    const Favouritepage(),
    const Adminpage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.shifting,
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.grey.withOpacity(0.1),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_cart),
            label: 'Cart',
              backgroundColor: Colors.grey.withOpacity(0.1)
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.favorite),
            label: 'Fav',
              backgroundColor: Colors.grey.withOpacity(0.1)
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'Profile',
              backgroundColor: Colors.grey.withOpacity(0.1)
          ),
        ],
      ),
      body: pages[_index],
    );
  }
}
