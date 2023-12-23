import 'package:flutter/material.dart';
import 'package:paypal_app/global_widgets/custom_appbar.dart';

 class ProfileSetupView extends StatelessWidget {
   const ProfileSetupView({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: customAppBar(
         title: 'Complete Setup',
         hideLeading: true,
       ),
     );
   }
 }
 