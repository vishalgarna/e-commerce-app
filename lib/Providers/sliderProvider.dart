import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Models/SliderModel/slider.dart';
import '../Services/ApiServices.dart';

final sliderProvider = FutureProvider<List<slidermodel>?>((ref){
  var repo = ref.watch(apiservice);

  return repo.getslider();
});