import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'product_detail_screen.dart';

class ProductGridTile extends StatelessWidget {
  const ProductGridTile(
    this.product, {
    super.key,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: buildGridFooterBar(context),
        child: GestureDetector(
          onTap: () {
            print('Go to product detail screen');
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

//onTap: (){
//Navigator.of(context).push(
//MaterialPageRoute(
//builder: (ctx) => ProductDetailScreen(Product),
//),
//);
//},
// child: Image.network(
// product.imageUrl,
// fit: BoxFit.cover,
//         onTap:(){
//           Navigator.of(context).pushNamed(
//             ProductDetailScreen.routeName,
//             arguments: product.id,
// )

//       ),
//     ),
//   );
// }

  Widget buildGridFooterBar(BuildContext context) {
    return GridTileBar(
      backgroundColor: Colors.black87,
      leading: IconButton(
        icon: Icon(
          product.isFavorite ? Icons.favorite : Icons.favorite_border,
        ),
        color: Theme.of(context).colorScheme.secondary,
        onPressed: () {
          print('Toggle a favorite product');
        },
      ),
      title: Text(
        product.title,
        textAlign: TextAlign.center,
      ),
      trailing: IconButton(
        icon: const Icon(
          Icons.shopping_cart,
        ),
        onPressed: () {
          print('Add item to cart');
        },
        color: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}


      // widget buildGridFooterBar(BuildContext context){
// return GridTileBar(
// ...
// onPressed: (){
// fina; cart = context.read<CartManager>();
// cart.addItem(product);
// ScaffoldMessenger.of(context)
// ...
// hideCurrentSnackBar()
// ..showSnackBar(
// SnacBar(
// content: const Text('
// Item added to cart;,),
// duration: const Duration(secons:2),
// action: SnackBarAction(
// label: 'UNDO',
// onPressed: () {
// cart.removeSingleItem(product.id!);
// })))}
// color; Theme(context).colorScheme.secodary,
// ))}
//     );
//   }
// }
// widget buildGridFooterBar(BuildContext context) {
// return GridTileBar(
// backgroundColor: Colors.black87,
// leading: ValueListenavleBuiler<bool>(
// valueListenable: product.isFavoriteListenable,
// builder: (ctx, isFavorite, child){
// return IconButton(
// icon: Icon(
// isFavorite ? Icons.favorite : Icons.favorite_border,
// ),
// color: Theme.of(context).colorScheme.secondary,
// onPressed: () {
// product.isFavorite = !isFavorite;
// },);},),);}




