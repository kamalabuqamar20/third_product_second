// import 'package:firbase_test2/models/category.dart';
// import 'package:firbase_test2/providers/firestore_provider.dart';
// import 'package:firbase_test2/router/router.dart';
// import 'package:firbase_test2/veiws/auth/screan/home/update_category.dart';
// import 'package:firbase_test2/veiws/product_screan/update_product_screan.dart';
import 'package:firbase_test_3/router/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../models/product.dart';
import '../../../../providers/firstore_provider.dart';
import 'descrption_product_screan.dart';

//import '../../models/product.dart';

class ProductWidget extends StatelessWidget {
  // const CategoryWidget({Key? key}) : super(key: key);
  Product product;
  String catId;
  ProductWidget(this.product,this.catId);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
      //  height: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black),
         // color: const Color.fromARGB(255, 240, 199, 60),
         color: Color(0xffCFE8A9),
          
        ),
          
        child:Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
           // alignment: Alignment.bottomCenter,
            children: [
              Container(
             //  height: 230,
                 //   width: MediaQuery.of(context).size.width,
                child: InkWell(
                  
                  child: Image.network(product.image,fit: BoxFit.cover,height: 127,width: 130,),
                  onTap: (){
                  //  AppRouter.NavigateToWidget(DescrptionProductScrean(product.name.toString(),product.price.toString(),product.description.toString(),product.image.toString()));
                  },
                  ),
                  
                  ),
              /*  Container(
                  color: Colors.yellow.withOpacity(0.5),
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    ////////////////////////////////////////////////////////////////////////////////////////////////
                    child: Column(
                      children: [
                        Text('Name: ${product.name}',style:const TextStyle(/*fontSize: 20,*/fontWeight: FontWeight.bold,color: Colors.black),),
                       const SizedBox(height: 2,),
                         Text('price: ${product.price}',style: TextStyle(/*fontSize: 20,*/color: Colors.black.withOpacity(0.5)),),
                      ],
                    ),

                    ////////////////////////////////////////////////////////////////////////////////////////////////////
                  )),*/
                
               /*   Positioned(
                    top: 10,
                    left: 265,// child: Text(product.name,style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    child: CircleAvatar(
                    radius: 20,
                    backgroundColor:Colors.yellow.withOpacity(0.5), 
                    child: IconButton(onPressed: (){
                  Provider.of<FirestoreProvider>(context,listen: false).productNameController.text=product.name;
                  Provider.of<FirestoreProvider>(context,listen: false).productDescController.text=product.description;
                  Provider.of<FirestoreProvider>(context,listen: false).productPriceController.text=product.price.toString();
                  Provider.of<FirestoreProvider>(context,listen: false).productQuantityController.text=product.quantity.toString();
                   // AppRouter.NavigateWithReplacemtnToWidget(UpdateProduct(product,catId));
                 //  AppRouter.NavigateToWidget(UpdateProduct(product,catId));
                    }, icon:const Icon(Icons.edit,color: Colors.black,)),
                  )),*/
                /*  Positioned(
                    top: 65,
                    left: 265,
                    child: CircleAvatar(
                    radius: 20,
                    backgroundColor:Colors.yellow.withOpacity(0.5), 
                    child: IconButton(onPressed: (){
                    Provider.of<FirestoreProvider>(context,listen: false).deleteProduct(product,catId);
                    }, icon:const Icon(Icons.delete,color: Colors.black,)),
                  )),*/
            ],
          ),
        ) ,
        
          ),
    ) ;
   
  }
}
/*
GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: myProducts.length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(myProducts[index]["name"]),
              );
            }),
*/



////////////
///
///
///
///
/*
// import 'package:firbase_test2/models/category.dart';
// import 'package:firbase_test2/providers/firestore_provider.dart';
// import 'package:firbase_test2/router/router.dart';
// import 'package:firbase_test2/veiws/auth/screan/home/update_category.dart';
// import 'package:firbase_test2/veiws/product_screan/update_product_screan.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../models/product.dart';
import '../../../../providers/firstore_provider.dart';

//import '../../models/product.dart';

class ProductWidget extends StatelessWidget {
  // const CategoryWidget({Key? key}) : super(key: key);
  Product product;
  String catId;
  ProductWidget(this.product,this.catId);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black),
          color: const Color.fromARGB(255, 240, 199, 60),
          
        ),
          
        child:Padding(
          padding: const EdgeInsets.all(15.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
             //   height: 230,
                 //   width: MediaQuery.of(context).size.width,
                child: Image.network(product.image,fit: BoxFit.cover,)),
                Container(
                  color: Colors.yellow.withOpacity(0.5),
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    ////////////////////////////////////////////////////////////////////////////////////////////////
                    child: Column(
                      children: [
                        Text('Name: ${product.name}',style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                       const SizedBox(height: 2,),
                         Text('price: ${product.price}',style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.5)),),
                      ],
                    ),

                    ////////////////////////////////////////////////////////////////////////////////////////////////////
                  )),
               /*   Positioned(
                    top: 10,
                    left: 265,// child: Text(product.name,style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    child: CircleAvatar(
                    radius: 20,
                    backgroundColor:Colors.yellow.withOpacity(0.5), 
                    child: IconButton(onPressed: (){
                  Provider.of<FirestoreProvider>(context,listen: false).productNameController.text=product.name;
                  Provider.of<FirestoreProvider>(context,listen: false).productDescController.text=product.description;
                  Provider.of<FirestoreProvider>(context,listen: false).productPriceController.text=product.price.toString();
                  Provider.of<FirestoreProvider>(context,listen: false).productQuantityController.text=product.quantity.toString();
                   // AppRouter.NavigateWithReplacemtnToWidget(UpdateProduct(product,catId));
                 //  AppRouter.NavigateToWidget(UpdateProduct(product,catId));
                    }, icon:const Icon(Icons.edit,color: Colors.black,)),
                  )),*/
                /*  Positioned(
                    top: 65,
                    left: 265,
                    child: CircleAvatar(
                    radius: 20,
                    backgroundColor:Colors.yellow.withOpacity(0.5), 
                    child: IconButton(onPressed: (){
                    Provider.of<FirestoreProvider>(context,listen: false).deleteProduct(product,catId);
                    }, icon:const Icon(Icons.delete,color: Colors.black,)),
                  )),*/
            ],
          ),
        ) ,
        
          ),
    ) ;
   
  }
}
/*
GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: myProducts.length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(myProducts[index]["name"]),
              );
            }),
*/
*/