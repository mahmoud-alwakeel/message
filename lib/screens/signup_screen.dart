import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import '../components/custom_text_field.dart';
import '../constants.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
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
                  Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 24),),
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
              CustomButton(buttonText: 'Sign Up',),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?", style: TextStyle(color: Colors.white),),
                  TextButton(
                    child: Text('Login', style: TextStyle(color: Color(0xffC7EDE6)),),
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