import 'package:flutter/material.dart';

import 'product_grid_title.dart';
import 'products_manager.dart';

class ProductsGrid extends StatelessWidget {
  final bool showFavorites;

  const ProductsGrid(this.showFavorites, {super.key});

  @override
  Widget build(BuildContext context) {
    final productsManager = ProductManager();
    final products =
        showFavorites ? productsManager.favoriteItem : productsManager.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemBuilder: (ctx, i) => ProductGridTile(products[i]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
// import '../../models/product.dart';

// @override
// widget build(BuildContext context) {
// //Doc ra danh sach cac pro se duc hien thi tu ProductsManager
// final products = context.select<ProductsManager, List<Product>>(
// (productsManager) => showFavorites
// ? productsManager.favoriteItems
// : productsManager.items);

// }