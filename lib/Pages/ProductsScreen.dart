import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Models/ProductFilterModel/Productfiltermodel.dart';
import '../Models/ProductFilterModel/ProductsSort.dart';
import '../Models/paginationmodel/pagination.dart';
import '../Providers/ProductProvider.dart';
import '../Widgets/SecondProductCart.dart';
import '../Widgets/Text.Widget.dart';

class Productsscreen extends StatefulWidget {
  Productsscreen({super.key});

  @override
  State<Productsscreen> createState() => _ProductsscreenState();
}

class _ProductsscreenState extends State<Productsscreen> {
  TextEditingController searchController = TextEditingController();

  String? CategoryName;
  String? CategoryId;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final Map? arguments = ModalRoute.of(context)?.settings.arguments as Map?;

    if (arguments != null) {
      setState(() {
        CategoryName = arguments['categoryName'];
        CategoryId = arguments['id'];
      });
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(CategoryName ?? 'Products'),
              InkWell(
                onTap: (){

                },
                  child: Icon(Icons.favorite))
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  labelText: 'Search product',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
             const  SizedBox(height: 20),
              _ProductFilter(
                Categoryid: CategoryId ?? '123456789011',
                CatgoryName: CategoryName ?? 'No Products',
              ),
             const  SizedBox(height: 20),
              _ProductList(
                CategoryId: CategoryId ?? '123456789011',
                CategoryName: CategoryName ?? 'No Products',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductFilter extends ConsumerWidget {
  final _SortOptions = [
    ProductSortModel(value: 'createdAt', label: 'Latest'),
    ProductSortModel(value: '-productPrice', label: 'Price High To Low'),
    ProductSortModel(value: 'productPrice', label: 'Price Low to High'),
  ];

  final String Categoryid;
  final String CatgoryName;

  _ProductFilter({
    required this.Categoryid,
    required this.CatgoryName,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _filterProvider = ref.watch(ProduFilterProvider);
    return Container(
      height: 51,
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 5),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow:const  [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget(title: CatgoryName, fontsize: 20),
          PopupMenuButton(
            initialValue: _filterProvider.SortBy,
            icon: const Icon(Icons.filter_list_alt),
            onSelected: (SortBy) {
              ProductFilterModel _productfiltermodel = ProductFilterModel(
                paginationmodel: PaginationModel(page: 0, pagesize: 10),
                CategoryId: Categoryid,
                SortBy: SortBy.toString(),
              );

              ref.read(ProduFilterProvider.notifier).SetProdcutonFilter(_productfiltermodel);
              ref.read(ProductnotifierProvider.notifier).getproducts();
            },
            itemBuilder: (BuildContext context) {
              return _SortOptions.map((item) {
                return PopupMenuItem(
                  value: item.value,
                  child: InkWell(
                    child: Text(item.label!),
                  ),
                );
              }).toList();
            },
          ),
        ],
      ),
    );
  }
}

class _ProductList extends ConsumerWidget {
  final String CategoryId;
  final String CategoryName;

  _ProductList({super.key, required this.CategoryName, required this.CategoryId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productstate = ref.watch(ProductnotifierProvider);

    if (productstate.products.isEmpty) {
      if (!productstate.hasnext && !productstate.isLoading) {
        return const Center(child: Text('No Product'));
      }
      return const Center(child:  CircularProgressIndicator());
    }
    return Expanded(
      child: GridView.builder(
        gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10, // Corrected spacing for better layout
        ),
        itemCount: productstate.products.length,
        itemBuilder: (context, index) {
          return SecondProductCart(
              model: productstate.products[index]);
        },
      ),
    );
  }
}
