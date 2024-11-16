import 'package:flutter/cupertino.dart';


// this text widget to help reduce maxlength text witghrt and usre custom
class TextWidget extends StatelessWidget {
  String title ;
double fontsize ;
  TextWidget({super.key , required this.title , required this.fontsize} );

  @override
  Widget build(BuildContext context) {
    return Text(title , style: TextStyle(fontSize:fontsize , fontWeight: FontWeight.bold),);
  }
}

