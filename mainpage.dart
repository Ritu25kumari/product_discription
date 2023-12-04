import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ritu_trainee/product_discription/controllerpage.dart';


class ProductDiscription extends GetView<ProductController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Product Detail',style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          IconButton(icon: const Icon(Icons.add),
          onPressed:(){
            Get.bottomSheet(
              Container(
                color: Colors.teal[200],
                height: 400,
                child: SingleChildScrollView(
                  child: Column(children: [
                    const Text('Add Data',style: TextStyle(fontWeight: FontWeight.bold),),
                    TextFormField(
                      controller: controller.titleController,
                      decoration: const InputDecoration(
                        labelText: 'title'
                      ),

                    ),

                    const SizedBox(height: 10,),
                    TextFormField(
                      controller: controller.discriptionController,
                      decoration: const InputDecoration(
                          labelText: 'discription'
                      ),

                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      controller: controller.priceController,
                      decoration: const InputDecoration(
                          labelText: 'price'
                      ),

                    ),
                    const SizedBox(height: 10,),
                    TextFormField(
                      controller: controller.quantityController,
                      decoration: const InputDecoration(
                          labelText: 'quantity'
                      ),
                    ),
                    ElevatedButton(child: const Text('add'),
                    onPressed: (){controller.addProduct(Product(title: 'abc', description: 'def', price: 5, quantity: 2));},),
                    const SizedBox(height: 10,),
                  ],),
                ),
              )
            );
          } )
        ],
      ),
      body: Container(
        child: Obx(()=> Text('${controller.product}')),
      ),
    );
  }
}
