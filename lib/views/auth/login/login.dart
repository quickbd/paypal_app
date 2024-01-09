import 'package:flutter/material.dart';
import 'package:paypal_app/global_widgets/custom_field.dart';
import 'package:paypal_app/views/auth/register/register.dart';
import 'package:get/get.dart';
import '../../../global_widgets/custom_appbar.dart';
import '../../../global_widgets/custom_button.dart';
import '../../home/home_view.dart';
import '../../nav_view/nav_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(hideLeading: true),
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
                  const SizedBox(height: 20.0,),
                    Column(
                  children: [
                    const CustomField(title: "Email Address"),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const CustomField(title: "Password", secured: true),
                    const SizedBox(
                      height: 20.0,
                    ),
                    CustomButton(
                        title: "Login",
                       onTap:() => Get.to( const BottomNavBar()) ,
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
