import 'package:flutter/material.dart';

import 'orders_manager.dart';
import 'orders_item_card.dart';

class OrderScreen extends StatelessWidget {
static const routeName ='/orders';
const OrderScreen({super.key)};

@override
Widget build(BuildContext context) {
print('building order');
final orderManager = OrdersManager();
return Scaffold(
appBar: AppBar(
title: const Text('Your Orders'),
),
body: ListView.builder(
itemCount: ordersManager.orderCount,
itemBuilder: (ctx,i) => OrderItemCard(ordersManager.order[i],
),
drawer: const Appdrawer(),
body: ListView.bulder(...),
);

}
}



// widget build(BuildContext context){
// priny('building orders');
// return Scaffold(
// appBar: AppBarr(
// title: const Text('Your Order'),
// ),
// drawer: const AppDrawer(),
// body: Consumer<ctx, ordersManager,child){
// return ListView.builder(
// itemOunt:ordersManager.orderCount,
// itemBuilder: (ctx, i) =>
// OrderItemCard(ordersManager.order[i]),
// )}))}


