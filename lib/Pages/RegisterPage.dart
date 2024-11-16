import 'package:flutter/material.dart';
import '../Services/ApiServices.dart';
import '../Widgets/sIgnupImageCartWIdget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // Define global key
  final GlobalKey<FormState> _globalkey = GlobalKey<FormState>();
  // Make Email and Password controllers
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

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
              child: Form(
                key: _globalkey, // Apply the global key to the Form
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 const   ImageLoginDignup(),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Name';
                        }
                        return null;
                      },
                      controller: name,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        hintText: 'Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
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
                   const  SizedBox(height: 10,),
                    ElevatedButton(
                      onPressed: () {
                        if (_globalkey.currentState!.validate()) {
                          setState(() {
                            isLoading = true;
                          });
                          // API call
                          final uname = name.text.trim();
                          final emailv = email.text.trim();
                          final pass = password.text.trim();

                          final service = Apiservices();
                          service.registeruser(uname, emailv, pass).then((response) {
                            setState(() {
                              isLoading = false;
                            });
                            if (response) {

                               showDialog(context: context, builder: (BuildContext context){
                                return SimpleDialog(
                                  title:const  Center(child: Text('Signing Succesully')),
                                  children: [

                                    ElevatedButton(onPressed: (){
                                      Navigator.pushNamedAndRemoveUntil(context, '/login', (Route<dynamic> routes ) => false);
                                    }, child: const Text('ok'))
                                  ],
                                );
                              });

                            } else {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return SimpleDialog(
                                    title: const Center(child: Text('email already store ')),
                                      children: [

                                      ElevatedButton(onPressed: (){
                                        Navigator.pop(context);
                                      }, child: const Text('ok'))
                                      ],
                                  );
                                },
                              );
                            }
                          });
                        } else {
                          return;
                        }
                      },
                      child: isLoading ? const CircularProgressIndicator() : const  Text('Submit'),
                    ),
                   const  SizedBox(height: 10,),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(context, '/login', (Route<dynamic> routes ) => false);
                      },
                      child: RichText(
                        text: const TextSpan(
                          text: ' Already Have an account? ',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'Sign in',
                              style: TextStyle(fontSize: 20, color: Colors.blueAccent),
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
      ),
    );
  }
}
