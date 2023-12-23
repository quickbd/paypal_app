import 'package:flutter/material.dart';
import 'package:paypal_app/global_widgets/custom_field.dart';
import 'package:paypal_app/views/auth/register/register.dart';
import 'package:get/get.dart';
import '../../../global_widgets/custom_appbar.dart';
import '../../../global_widgets/custom_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar( title: "Login"),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/PayPal.png',
                  width: 170.0,
                ),
                const Column(
                  children: [
                    CustomField(title: "Email Address"),
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomField(title: "Password", secured: true),
                    SizedBox(
                      height: 20.0,
                    ),
                    CustomButton(
                        title: "Login",
                     // onTap:() => print("sss") ,
                    ),
                  ],
                ),
                Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          Get.to(()=> const RegisterView());
                        },
                        child: Text(
                          "Having trouble login?",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        )
                    ),
        
        
                    TextButton(onPressed: () {
                      Get.to(()=> const RegisterView());
                    }, child: const Text("Sign Up"))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
