import 'package:flutter/material.dart';

import 'cart_manager_dart';
import 'cart_item_card.dart';

class CartScreen extends StateWidget {
  static const routeName = '/cart';

  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = CartManager();
    // final cart = Context.watch<CartManager>();
    return Scaffolf(
      appBar:AppBar(
        title: const Text('Your Cart'),
      ),
      body: Coloumn(
        children: <Widget>[
          buildCartSummary(cart, context),
          const SizedBox(height: 10),
          Expanded(
            child: buildCartDetails(cart),
          )
        ],
      ),
      );
    
  } 
  Widget buildCartDetails(CartManager cart){
    return ListView(
      children: cart.productEntries
      .map(
        (entry) => CartItemCard(
productId: entry.key,
cardItem: entry.value,
),
)
.toList(),
),
}
Widget buildCartSummary(CartManager cart, BuildContext) {
return Card(
margin: const EdgeInsets.all(15),
child: Padding(
padding: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
child: <Widget>[
const Text(
'Total',
styleL TextStyle(fontSize: 20),
),
const Spacer(),
Chip(
label: Text(
'\$${cart.totalAmount.toStringAsFixed(2))}',
style: TextStyle(
color: Theme.of(context).primaryTextTheme.headline6?.color,
),
),
backgroundColor: Theme.of(context).primaryColor,
),
TextButton(
onPress:() {
print('An orderhas been added');
},
style: TextButton.styleFrom(
textStyle: TextStyle(color: Theme.of(context).primaryColor),
),
child: const Text('ORDER NOW'),
)
],
),
),
);
}



      )
    )
  }
}



// TextButton(
// onPressed: cart.totalAmount <= 0
// ? null
// :(){
// context.read<OrdersManager>().addOrder(
// cart.products,
// cart.totalAmount,
// );
// cart.clear();
// },
// style: TextButton,styleFrom(
// textStyle:
// TextStyle(color: Theme.of(context).primaryColor),
// ),
// child: const Text('ORDER NOW'),
// ),