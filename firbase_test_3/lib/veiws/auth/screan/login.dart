// import 'package:firbase_test2/router/router.dart';
// import 'package:firbase_test2/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/auth_provider.dart';
import '../../../router/router.dart';
import 'home/categories_screan.dart';
import 'singn_up.dart';

class MyStatefulWidget extends StatefulWidget {
 // const MyStatefulWidget({Key? key}) : super(key: key);
 
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
 
class _MyStatefulWidgetState extends State<MyStatefulWidget> {

 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        // backgroundColor: const Color.fromARGB(255, 240, 199, 60),
        backgroundColor: Color(0xffFFFDE3),
       // backgroundColor: Colors.teal[300],
        //appBar: AppBar(),
         appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Pr',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'e',
              style: TextStyle(
                fontSize: 50.0,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 240, 199, 60),
              ),
            ),
            Text(
              'sent',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        //backgroundColor: const Color.fromARGB(255, 240, 199, 60),
        backgroundColor: Color(0xffFFFDE3),
      ),
        body:Consumer<AuthProvider>(
          builder: (context,provider,x) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Form(
                key: provider.loginKey,
                child: ListView(
                  children:[ //<Widget>
                  /*  Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                       // alignment: Alignment.center,
                       // padding: const EdgeInsets.all(10),
                        child:  Image.asset('assets/logos/shoping1.jpg',width: 100,height: 100,)/* Text(
                          'TutorialKart',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )*/),*/
                       const SizedBox(height: 20,),
                         CircleAvatar(radius: 30,backgroundColor:const Color.fromARGB(255, 25, 138, 29),child: Image.asset('assets/logos/buy.png',fit: BoxFit.cover,),),
                      const  SizedBox(height: 20,),
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(5),
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                         //   color: Colors.teal[300],
                            fontSize: 50.0,
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        
                        validator: provider.emailValidation,
                         controller: provider.emailController,
                        decoration: const InputDecoration(
                           enabledBorder:  OutlineInputBorder(
                                borderSide: BorderSide(width: 3, color: Colors.black),
                              ),
                          border: OutlineInputBorder(),
                          labelText: 'User Name',
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextFormField(
                        validator: provider.passwordValidation,
                        obscureText: true,
                       controller: provider.passwordController,
                        decoration: const InputDecoration(
                           enabledBorder:  OutlineInputBorder(
                                borderSide: BorderSide(width: 3, color: Colors.black),
                              ),
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    // TextButton(
                    //   onPressed: () {
                    //     //forgot password screen
                    //   },
                    //   child: const Text('Forgot Password',),
                    // ),
                    SizedBox(height: 20,),
                    Container(
                        height: 50,
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                           style:ElevatedButton.styleFrom(primary: Colors.black),
                          child:const  Text('Login',style: TextStyle( color:  Color.fromARGB(255, 240, 199, 60),fontSize: 20,fontWeight: FontWeight.bold),),
                          onPressed: () {
                         provider.singnIn() ; 
                            //////////////////
                            
                        //    print(nameController.text);
                         //   print(passwordController.text);
                          },
                        )
                    ),
                    ///////////////////////////////////
                    SizedBox(height: 10,),
    
                    //////////////////////////////////////////////////////
                   /*  Container(
                        height: 50,
                       // color: Colors.green,
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                          style:ElevatedButton.styleFrom(primary: Colors.black),
                          child:const  Text('Register a new user',style: TextStyle( color:Color.fromARGB(255, 240, 199, 60),fontSize: 20,fontWeight: FontWeight.bold)),
                          onPressed: () {
                           // provider.singnUp();
                           AppRouter.NavigateWithReplacemtnToWidget(SignUpScreen()) ;
                        //    print(nameController.text);
                         //   print(passwordController.text);
                          },
                        )
                    ),*/
                    /////////////////////////////////////////////////
                     Row(
                      children: [//<Widget>
                       const  Text('Does not have account?'),
                        TextButton(
                          child: const Text(
                            'Register a new user',
                            style: TextStyle(fontSize: 13,color: Colors.black),
                          ),
                          onPressed: () {
                          //   AppRouter.NavigateWithReplacemtnToWidget(SignUpScreen()) ;
                          AppRouter.NavigateToWidget(SignUpScreen());
                            //signup screen
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    SizedBox(height: 20,),
                     TextButton(
                      onPressed: () {
                        //forgot password screen
                        provider.forgetPassword();
                      },
                      child: const Text('Forgot Password',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    //////////////////////////////////////////
                  
                  ],
                ),
              ));
          }
        )),
    );
  }
}