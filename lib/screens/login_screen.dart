import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:messege/components/custom_button.dart';
import 'package:messege/components/custom_text_field.dart';
import 'package:messege/constants.dart';
import 'package:messege/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.07),
              Image.asset('assets/images/scholar.png'),
               const Text(
                'Messege',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
              SizedBox(height: screenHeight * 0.11),
              Row(
                children: [
                  Text('Login', style: TextStyle(color: Colors.white, fontSize: 24),),
                ],
              ),
              const SizedBox(height: 18),
              CustomTextField(
                hintText: 'email',
                labelText: 'enter your email',
              ),
              const SizedBox(height: 12),
               CustomTextField(
                 hintText: 'password',
                 labelText: 'enter your password',
               ),
              SizedBox(height: screenHeight * 0.06),
              CustomButton(buttonText: 'Login',),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?", style: TextStyle(color: Colors.white),),
                  TextButton(
                    child: Text('Sign Up', style: TextStyle(color: Color(0xffC7EDE6)),),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return SignUpScreen();
                      }));
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


