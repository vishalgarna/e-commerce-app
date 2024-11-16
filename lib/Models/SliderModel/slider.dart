import 'package:freezed_annotation/freezed_annotation.dart';

import '../../Config/config.dart';

part 'slider.g.dart';
part 'slider.freezed.dart';

// Correcting the mapping function and typo in fromJson method
List<slidermodel> sliderFromJson(dynamic str) =>
    List<slidermodel>.from((str.map((data) => slidermodel.fromJson(data))));

@freezed
class slidermodel with _$slidermodel {
  factory slidermodel({
    required String SliderName,
    required String SliderImage,
  }) = _slidermodel;

  factory slidermodel.fromJson(Map<String, dynamic> json) =>
      _$slidermodelFromJson(json);
}

extension ImagePath on slidermodel {
  String get fullImagePath =>
      '${Config.baseurl}/${SliderImage}';
}
