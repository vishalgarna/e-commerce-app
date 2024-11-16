import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Models/SliderModel/slider.dart';
import '../Providers/sliderProvider.dart';
class SliderWidget extends ConsumerWidget {



  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context , WidgetRef ref) {
    Image image ;

    return  SizedBox(
      height: 200,
      child: buildCaruosel(ref),
    );
  }

  Widget buildCaruosel (WidgetRef ref){
    final sliderlist = ref.watch(sliderProvider);

    return sliderlist.when(data: (data)=>crouselslider(data!),
        error: (err ,stact) => Text(err.toString()),
        loading: ()=> const LinearProgressIndicator());
  }

  Widget crouselslider (List<slidermodel> model){
    return CarouselSlider(
        items: model.map((data) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child:
            Image(
              height: 90,
              width: 300,
              fit: BoxFit.fill,
                image: NetworkImage(data.fullImagePath),
               errorBuilder: (cotext , error , stracterace){
                return const SizedBox(
                  height: 90,
                  width: 300,
                  child: Icon(Icons.image),
                );
               },),);
        }).toList(), options: CarouselOptions(
      autoPlayAnimationDuration: const Duration(milliseconds:800 ),
      autoPlay: true,
      enableInfiniteScroll: true,
      scrollDirection: Axis.horizontal,
      enlargeCenterPage: true,
      autoPlayCurve: Curves.decelerate

    ));
  }
}
