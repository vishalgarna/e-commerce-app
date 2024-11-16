
import 'package:freezed_annotation/freezed_annotation.dart';

import '../paginationmodel/pagination.dart';

// ye filter karne ke liye ho rha hai using category id
part 'Productfiltermodel.freezed.dart';
@freezed
class ProductFilterModel with _$ProductFilterModel {
  factory ProductFilterModel({
  required  PaginationModel paginationmodel,
    String  ? CategoryId,
    String ? SortBy,
    List<String> ? ProductId,

})= _ProductFilterModel;


}