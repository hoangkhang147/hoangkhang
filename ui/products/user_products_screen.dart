import 'package:flutter/material.dart';

import 'user_product_list.dart';
import 'products_manager.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = '/user-products';
  const UserProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productsManager = ProductManager();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Products'),
        actions: <Widget>[
          buildAddButton(),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async => print('refresh products'),
        child: buildUserProductListView(productsManager),
      ),
      drawer: const Appdrawer(),
      body: RefreshIndicator(...),
    );
    
  }
}

Widget buildUserProductListView(ProductManager productsManager) {
  return ListView.builder(
    itemCount: productsManager.itemCount,
    itemBuilder: (ctx, i) => Column(
      children: [
        UserProductListTile(
          productsManager.items[i],
        ),
        const Divider(),
      ],
    ),
  );
}

Widget buildAddButton() {
  return IconButton(
    icon: const Icon(Icons.add),
    onPressed: () {
      print('Go to edit product screen');
    },
  );
}

// widget buildUserProductListView(){
// return Consumer<ProductsManager>(
// builder: (ctx, productsManager,child){
// return ListView.buildder(
// itemCount: productsManager.itenCount,
// itemBuilder: (ctx,i ) => Column(
// children: [
// UserProductListTile(
// productsManager.items[i],
// ),
// const Divider(),
// ],),);},);}



// widget buildAddButton(BuildContext context){
// return IconButton (
// icon: consy Icon(Icons.add),
// onPressed:(){
// Navigator.of(context).pushNamed(
// EditProductScreen.routeName,
// );
// }
// );
// }
