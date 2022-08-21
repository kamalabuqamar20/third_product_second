// import 'package:firbase_test2/providers/firestore_provider.dart';
// import 'package:firbase_test2/router/router.dart';
// import 'package:firbase_test2/veiws/auth/screan/home/category_widget.dart';
// import 'package:firbase_test2/veiws/auth/screan/home/home_screan.dart';
// import 'package:firbase_test2/veiws/product_screan/add_product_screan.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../../../../providers/auth_provider.dart';
import '../../../../providers/firstore_provider.dart';
// import '../../../product_screan/all_products_screan.dart';
import '../../../../router/router.dart';
import '../product_screan/all_product_screan.dart';
import 'category_widget.dart';

class CategoriesScrean extends StatelessWidget {
  //const CategoriesScrean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: const Color.fromARGB(255, 240, 199, 60),
     backgroundColor: Color(0xffFFFDE3),
      appBar: AppBar(
        leading:  IconButton(onPressed: (){
          Provider.of<AuthProvider>(context,listen: false).signOut();
          }, icon:const Icon(Icons.logout,color: Colors.black,)),
      //  backgroundColor: const Color.fromARGB(255, 240, 199, 60),
      backgroundColor: Color(0xffCFE8A9),
        elevation: 0.0,
        centerTitle: true,
        title:const Text(' Online Store',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),),
      body: Consumer<FirestoreProvider>(
      builder: (x,provider,y) { 
        provider.getAllPhotos();
        return 
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               //Welcome to the online store
               const  Text('Welcome to the online store',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.black ),),
              const SizedBox(height: 20,),
                CarouselSlider(
                    items: provider.photos
                        .map((e) => Image.network(
                              e.imageUrl,
                             height: 200,
                              width: 500,
                            )).toList(),
                        
                    options:
                        CarouselOptions(
                         height: 200,
      aspectRatio: 16/11,//16/9
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
     // onPageChanged: callbackFunction,
      scrollDirection: Axis.horizontal,
                          )
                  ),
                /////////////////////////////////////////////////
               const SizedBox(height: 20,),
             const  Text('Categories',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.black ),),
              const SizedBox(height: 10,),
                //////////////////////////////////////////////////
                provider.categories == null?
                 const Center(child: CircularProgressIndicator(),):
                ListView.builder(
                    physics:const NeverScrollableScrollPhysics() ,
                    shrinkWrap: true,
                 // scrollDirection: Axis.horizontal,
                  itemCount: provider.categories.length,///////////////////////////////////////////////////
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                          provider.getAllProducts(provider.categories[index].catId);
                    AppRouter.NavigateToWidget(ProductsScreen(provider.categories[index].catId));
                      
                      },
                      child: CategoryWidget(provider.categories[index]));//////////////////////////////////////
                  }),
              ],
            ),
          ),
        );
      }
    ),

   /* floatingActionButton: FloatingActionButton(
      onPressed: (){
      //  Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScrean(),), );
       AppRouter.NavigateToWidget(HomeScrean());
      },
      backgroundColor: Colors.black,
    //  child:const Icon(Icons.add,color: Color.fromARGB(255, 240, 199, 60),),
      child: Lottie.network('https://assets3.lottiefiles.com/packages/lf20_tf6wSv.json'),
      ),*/
    );
  }
}
/*
 provider.categories == null?
       const Center(child: CircularProgressIndicator(),):
        ListView.builder(
           // physics:const NeverScrollableScrollPhysics() ,
            //shrinkWrap: true,
         // scrollDirection: Axis.horizontal,
          itemCount: provider.categories.length,///////////////////////////////////////////////////
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                  provider.getAllProducts(provider.categories[index].catId);
            AppRouter.NavigateToWidget(ProductsScreen(provider.categories[index].catId));
              
              },
              child: CategoryWidget(provider.categories[index]));//////////////////////////////////////
          });
*/