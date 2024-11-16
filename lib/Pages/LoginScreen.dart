
import 'package:flutter/material.dart';

import '../Services/ApiServices.dart';
import '../Widgets/sIgnupImageCartWIdget.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  // Define global key
  final _globalkey = GlobalKey<FormState>();
  // Make Email and Password controllers
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  // Loading state
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SizedBox(
            width: 370,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const  ImageLoginDignup(),
                  // Email Text Field
                  Form(
                    key: _globalkey,
                      child: Column(children: [
                        TextFormField(

                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            RegExp exp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                            if (value!.isEmpty) {
                              return 'Please Enter Email';
                            } else if (!exp.hasMatch(value)) {
                              return 'Please Enter Valid Email';
                            }
                            return null;
                          },
                          controller: email,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.email),
                            hintText: 'email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                       const  SizedBox(height: 10,),
                        // Password Text Field
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please Enter Password';
                            }
                            return null;
                          },
                          controller: password,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.password),
                            hintText: 'password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                  ],))
               ,
                 const  SizedBox(height: 10,),
                  // Submit Button
                  ElevatedButton(
                    onPressed: () {
                      if (_globalkey.currentState!.validate()) {
                        setState(() {
                          isLoading = true;
                        });
                        // API call
                        final emailv = email.text.trim();
                        final pass = password.text.trim().toString();

                        final service = Apiservices();
                        service.loginuser(emailv, pass).then((response) {
                          setState(() {
                            isLoading = false;
                          });
                          if (response) {

                            Navigator.pushNamedAndRemoveUntil(context, '/home', (Route<dynamic>route)=> false);
                            // Navigator.pushNamedAndRemoveUntil(
                            //   context,
                            //   '/home',
                            //       (Route<dynamic> route) => false,
                            // );
                          } else {
                         const   SimpleDialog(
                            title:Text('Credential Not Match') ,
                           );
                          }
                        });
                      }
                    },
                    child: isLoading ? const CircularProgressIndicator() : const Text('Submit'),
                  ),
                 const  SizedBox(height: 10,),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamedAndRemoveUntil(context, '/register', (Route<dynamic>routes)=>false);
                     // Navigator.pushNamedAndRemoveUntil(context, '/register' ,(Route<dynamic> route) => false,);
                    },
                    child: RichText(
                      text: const TextSpan(
                        text: 'Dont Have a account ? ',
                        style: TextStyle(fontSize: 18 , color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'Sign up',   style: TextStyle(fontSize: 20 , color: Colors.blueAccent) ,


                          ),

                        ],
                      ),
                    ),
                  )


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
