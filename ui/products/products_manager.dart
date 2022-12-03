import '../../models/product.dart';

class ProductManager {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
      isFavorite: true,
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
      isFavorite: true,
    ),
  ];

  int get itemCount {
    return _items.length;
  }

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItem {
    return _items.where((item) => item.isFavorite).toList();
  }
  Product? findById(String id){
    try{
      return_items.firstWhere(item) =>item.id ==id);
    }
    catch (erro){
      return null;
    }
    }
  }

// import'package:flutter/foundation.dart';
// import'../../models/product.dart';

// class ProductsManager with ChangNotifier {
// ...
// void addProduct(Product product) {
// _items.add(
// product.copyWith(
// id:'p${DateTime.now().toIso8601String()}',
// ),
// );
// notifyListeners();
// }

// void updateProduct(Product product){
// final index = _items.indexWhere(item) =>item.id = product.id);
// if (index >= 0 ){
// _items[index] = product;
// notifyListens();
// }}
// void toggleFavoriteStatus(Product product){
// final saveStatus = product.isFavorite;
// product.isFavorite = !saveStatus;
// }

// void deleteProduct(String id) {
// final index = _itens.indexWhere((item) => item.id == id);
// _items.removeAt(index);
// notifyListeners();
// }
// }


// Future<void>_saveForm() async{
// final isValid = _editForm.currentState!.validate();
// if(!isValid) {
// return;
// }
// _editForm.currentState.save();

// setState(() {
// _isLoading= true;
// });

// try{
// final productsManager = context.read<ProductsManager>();
// if (_editedProduct.id != null){
// productsManager.updateProduct(_editedProduct);
// }
// else{
// productsManager.addProduct(_editedProduct);
// }
// }
// catch(erro){
// await showErrorDialog(context, 'Something went wrong.');
// }

// setState((){
// _isLoading =false;});
// if(mounted) {
// Navigator.of(context).pop();
// }}











