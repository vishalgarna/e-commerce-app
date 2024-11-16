
import 'package:flutter/material.dart';

class ImageLoginDignup extends StatelessWidget {
  const ImageLoginDignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
      ),
      height: 200,
      width: 200,
      child: Center(child:
      Image.asset('images/2.jpg'),),
    );
  }
}
