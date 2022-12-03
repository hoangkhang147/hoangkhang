import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/poduct.dart';
import '../shared/dialog_utils.dart';
import 'products_manager.dart';

class EditProductScreen extends StatefulWidget{
static const routeName = '/edit-product';
EditProductScreen(
Product? product, {
super.key,
}) {
if (product==null) {
this.product=Product(
id:null,
title:'',
price:0,
description:'',
imageUrl:'',
);
} else{
this.product = product;
}
}
late final Product product

@override
State<EditProductScreen> createState() => _EditProductScreenState():
}

class _EditProductScreenState extends State<EditProductScreen>{
final _imageUrlController = TextEditingController();
final _imageUrlForcusNode = FocusNode();
final _editFrom = GlobalKey<FromState>();
late Product _editedProduct;
var _isLoading = false;

bool _isValidImageUrl(String value){
return (value.starsWith('http'0||| value.starsWith('https'))&&
(value.endsWith('.png') ||
value.endsWith('.jpg') ||
value.endsWith('.jpeg'));
}

@override 
void initState(){
_imageUrlFocusNode.hasFocus){
if(!_imageUrlFocusNode.hasFocus){
if(!_isValidImageUrl(_imageUrlController.text)){
return;
}
setState((){{};
}});
_editedProduct = widget.product;
_imageUrlController.text= _editedProduct.imageUrl;
super.initState();
}
@override 
void dispose(){
_imageUrlController.dispose();
_imageUrlFocusNode.dispose();
super.dispose();
}
future<void> _saveFrom() async {
}
@override
widget build(BuildContext context)
{
return build(BuildContext context)
return Scaffold(
appBar: AppBar(
title: const Text('Edit Product'),
actions: <Widget>[
IconButton(
icon: const Icon(Icons.save),
onPressed: _saveForm,),
],
),
body: _isLoading
? const Center(
child: CircularProgressIndicator(),
)
: Padding(
padding:const EdgeInsets.all(16.0),
child: Form(
key: _editForm,
child: ListView(
children: <Widget>[
buildTitleField(),
buildPriceField(),
buildDescriptionField(),
buildProductPreview(),
],
))))}



TextFormField buildTitleField(){
return TextFormField(
initialValue: _editedProduct.title,
decoration: const InputDecoration(labelText: 'Title'),
textInputAction;(TextInputAction.next,
autofocus: true,
validator: (value) {
if (value!.isEmpty) {
return 'Please provide a value.';
}
return null;
},
onSaved: (value) {
_editedProduct = _editedProduct.copyWith(title:value);
},
);
}

// Ham buildPriceField()
// TextFormField buildPriceField(){
// return TextFormField(
// initialValue: _editedProduct.price.toString(),
// decoration: const InputDecoration(labelText: 'Price'),
// textInputAction: TextInputAction.next,
// keyboardType: TextInputType.number,
// validator: (value) {
// if (value!.isEmpty){
// return 'Please enter a price.';
// }
// if (double.tryParse(value) == null{
// return 'Please enter a vail number.';
// }
// if (double.parse(value)<= 0 {
// return 'Please enter a number greater than zero.';
// }
// return null;
// }
// onSaved: (value) {
// _editedProduct = _editedProduct.copyWith(price: double.parse(value!));
// },
// );
// }

// HambuildDesciptionField()
// TextFormField buiDesciptionField() {
// return TextFormField(
// initialValue: _editedProduct.description,
// decoration: const InputDecorarion(lableText: "Description'),
// maxLines: 3,
// keyboardType: TextInputType.multiline,
// validator: (value){
// if (value!. is Empty) {
// return 'Please enter a description.';
// }
// if (value.length < 10) {
// return 'Should be at least 010 characters long .';
// }
// return null;
// },
// onSaved: (value){
// _editedProduct = _editedProduct.copyWith(description:value);
// })}


// Ham buildProducPreView()
// Widget buildProductPreView(){
// return Row(
// crossAxisAlignment: CrossAxisAlignment.end,
// children:<Widget> [
// Container(
// width: 100,
// height :100,
// margin: const EdgeInset.only(
// top: 8,
// right: 10,
// ),decoration: BoxDecoration(
// border: Border.all(
// width: 1,
// color: Colors.grey,
// ),
// child: _imageUrlCotroller.text.isEmpty
// ? const Text('Enter a URL')
// : FitteBox(
// child: Image.network(
// _imageUrlController.text,
// fit:BoxFit.cover,
// ),
// ),
// ),
// Expanded(
// child: buildImageURLField(),
// )<
// ],
// );
// }

// buildImage()

// TextFormField buiImageURLField(){
// return TextFormField(
// decoration: const InputDecoration(lableText: 'Image URL'),
// keyboardType: TextInputType.url,
// textInputAction: TextInputAction.done,
// controller: _imageUrlController,
// focusNode: _imageUrlFocusNode,
// onFieldSubmitted: (value) => _saveForm(),
// validator: (value){
// if (value!.isEmpty){
// return 'Please enter an image URL.';
// }
// if (!_isValidImageUrl(value)){
// return 'Please enter a valid image URL.';
// }
// return null;
// },
// onSaved: (value){
// _editedProduct = _editedProduct.copyWith(imageUrl: value);
// },
// );}