import 'package:flutter/material.dart';
import '../Widgets/HomeproductWidget.dart';
import '../Widgets/Text.Widget.dart';
import '../Widgets/WidgetCategory.dart';
import '../Widgets/WidgetSlider.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context ) {


    return SafeArea(child:
    Scaffold(
      appBar: AppBar(
          title: TextWidget(title: 'Grocery Items', fontsize: 20)
      ),
      body:const SingleChildScrollView(
        child:  Padding(
          padding:  EdgeInsets.all(8.0),
          child:  Column(
            children: [
               SliderWidget(),
               SizedBox(height: 10,),
               CategoryWidget(),
               SizedBox(height: 10,),
               Homeproductwidget()
            ],
          ),
        ),
      ) ,
    ));
  }
}
