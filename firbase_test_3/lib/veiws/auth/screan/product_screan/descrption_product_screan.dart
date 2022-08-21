import 'package:firbase_test_3/router/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../models/product.dart';
import '../../../../providers/firstore_provider.dart';

class DescrptionProductScrean extends StatelessWidget {
  //const DescrptionProductScrean({Key? key}) : super(key: key);
 Product product;
  String catId;
  DescrptionProductScrean(this.product,this.catId);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffCFE8A9),//Colors.black,
        appBar: AppBar(
        leading:  IconButton(onPressed: (){
         AppRouter.popRoute();
          }, icon:const Icon(Icons.arrow_back,color: Colors.black,)),
        backgroundColor: Color(0xffCFE8A9),//const Color.fromARGB(255, 240, 199, 60),
        elevation: 0.0,
        centerTitle: true,
        title:const Text(' Product Description',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),),
        /////////////////////
         body:Consumer<FirestoreProvider>(
        builder: (context,provider,x) {
             return Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Stack(
                   // alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                           
                            height: 470,
                            decoration:const BoxDecoration(
                             color: Color(0xffFFFDE3) , //Color.fromARGB(255, 240, 199, 60), 
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 450,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius:const BorderRadiusDirectional.only(
                                    bottomEnd: Radius.circular(40),
                                    bottomStart: Radius.circular(40)),
                                   
                                    ),
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.only(top: 40),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          
                                           CircleAvatar (
                                            radius: 130,
                                            backgroundColor: Colors.white,
                                            backgroundImage:  NetworkImage(product.image),
                                          ),
                                         
                                        const  SizedBox(height: 20,),
                                        
                         
                                        ],
                                      ),
                                    ),
                              ),
                             Positioned(
                              top: 320,
                              left: 20,
                               child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                
                                //provider.productNameController
                                  Text('Name: ${product.name}',style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                   Text('Price: ${product.price}',style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                                ],),
                             ), 
                            ],
                          ),
                         
                      Container(
                        alignment: Alignment.topLeft,
                        width: double.infinity,
                        height: 200,
                        margin:const EdgeInsets.only(top: 470),
                        //color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Descrption: ${product.description}',style:const TextStyle(color:Colors.black, /*Color.fromARGB(255, 240, 199, 60)*/fontSize:20),),
                        ),
                      ) ,
    
                    ],
                  ),    
                   
                ),
                
              ],
        );
           }
         ),
        
      ),
    );
  }
}