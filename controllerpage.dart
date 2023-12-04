import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ProductController extends GetxController{
  RxList<dynamic> product = <Product>[
    Product(title: 'abc', description: 'description', price: 100, quantity: 2)
  ].obs;
  TextEditingController titleController = TextEditingController();
  TextEditingController discriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController quantityController = TextEditingController();

  void addProduct(Product){
    product.add(Product());
  }
}
class Product{
  var title ;
  var description;
  var price;
  var  quantity;
  Product({required this.title,required this.description,required this.price,required this.quantity});
 }

