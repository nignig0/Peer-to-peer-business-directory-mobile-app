

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final formKey = GlobalKey<FormState>();
  final passwordTextEditingController = TextEditingController();
  final emailTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login', 
              style: TextStyle(
                color: Theme.of(context).primaryColor, 
                fontSize: 40
              )),

              const SizedBox(height: 40),

              SizedBox(
                height: 60, 
                width: 350,
                child: TextFormField(
                  controller: emailTextEditingController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.black.withOpacity(0.5),
                    filled: true,
                    hintText: 'email',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.5))
                  ),
                  validator: (text){
                    if(text!.isEmpty){
                      return 'This field is required';
                    }
                    return null;
                  },
                ),
              ), 

              const SizedBox(height: 20), 

              SizedBox(
                height: 70, 
                width: 350,
                child: TextFormField(
                  controller: passwordTextEditingController,
                  style: const TextStyle(color: Colors.white),
                  autocorrect: false,
                  obscureText: true,
                  enableSuggestions: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.black.withOpacity(0.5),
                    filled: true,
                    hintText: 'password',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)), 
                  ),
                  validator: (text){
                    if(text!.isEmpty){
                      return 'This field is required';
                    }
                    return null;
                  },
                ),
              ), 

              const SizedBox(height: 20,),

              SizedBox(
                height: 40,
                width: 300,
                child: TextButton(onPressed: (){
                  if(formKey.currentState!.validate()){
                      Navigator.pushReplacementNamed(context, '/home');
                  }
                  
                }, 
                  style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor, 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    )
                  ),
                  child: const Text('Login', style: TextStyle(color: Colors.white),)
                ))
            ]
          ),
        )
        )
    );
  }
}