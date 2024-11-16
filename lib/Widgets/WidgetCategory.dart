
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Models/ProductFilterModel/Productfiltermodel.dart';
import '../Models/category.model/category.dart';
import '../Models/paginationmodel/pagination.dart';
import '../Providers/CategoryProvider.dart';
import '../Providers/ProductProvider.dart';
import 'Text.Widget.dart';


class CategoryWidget extends ConsumerWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: listCategory(ref),
      ),
    );
  }

  // this list widget handles data
  Widget listCategory(WidgetRef ref) {
    final model = ref.watch(CategoryProvider);
    return model.when(
      data: (data) => _buildCategory(data!, ref),
      error: (err, stacktrace) => Center(child: Text(err.toString())),
      loading: () => const LinearProgressIndicator(),
    );
  }

  // this widget builds UI of category
  Widget _buildCategory(List<CategoryModel> model, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[200],
          ),
          child: ListView.builder(
            itemCount: model.length,
            physics: const ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              var data = model[index];

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                onTap: () async {
              ProductFilterModel filterModel = ProductFilterModel(
              paginationmodel: PaginationModel(page: 1, pagesize: 10),
              CategoryId: data.id,
              SortBy: '-productPrice',
              );

              ref.read(ProduFilterProvider.notifier).SetProdcutonFilter(filterModel);
              ref.read(ProductnotifierProvider.notifier).getproducts();

              String name = data.categoryName ?? 'Default Name';
              String id = data.id ?? 'Default ID';

              Navigator.pushNamed(context, '/products' , arguments: {
              'categoryName' : name,
              'id' : id
              });


              },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(data.fullImagePath),
                          ),
                        ),
                      ),
                    ),
                   const  SizedBox(height: 5),
                   Row(
                        children: [
                          TextWidget(title: data.categoryName!, fontsize: 12),
                        const   Icon(Icons.arrow_forward_ios, size: 12),
                        ],
                      ),

                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}


