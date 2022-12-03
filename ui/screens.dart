export 'products/products_overview_screen.dart';
export 'products/products_details_screen.dart';
export 'products/user_products_screen.dart';
export 'products/products_manager.dart';

export 'orders/orders_screen.dart';
export 'orders/orders_manager.dart';

export 'cart/cart_screen.dart';
export 'cart/cart_manager.dart';	

 export 'products/edit_product_screen.dart';

onGenerateRoute: (settings){
..
if(setting.name ==EditProductScreen.routeName){
final productId = settings.argumenst as string ?;
return MaterialPageRoute(
builder:(ctx) {
return EditProductScreen(
productId != null
?ctx.read<ProductsManager>().findByid(productId)
:null,
);
},
);
}
return null;
}



