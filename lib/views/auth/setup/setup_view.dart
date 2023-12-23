import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paypal_app/controllers/profile_setup_controller.dart';
import 'package:paypal_app/global_widgets/custom_appbar.dart';
import 'package:paypal_app/global_widgets/custom_button.dart';
import 'package:paypal_app/global_widgets/custom_field.dart';

import '../../home/home_view.dart';

 class ProfileSetupView extends StatelessWidget {

     ProfileSetupView({Key? key}) : super(key: key);

   final controller = Get.put(ProfileSetupController());

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: customAppBar(
         title: 'Complete Setup',
         hideLeading: true,
       ),
       body: Padding(
          padding: const EdgeInsets.all(15),
         child: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   GetBuilder<ProfileSetupController>(builder: (controller){
                    return Stack(
                       alignment: Alignment.bottomRight,

                       children: [
                         controller.pickedImage == null ?
                         const CircleAvatar(
                           radius: 60,
                           backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/015/409/989/small/elegant-man-in-business-suit-with-badge-man-business-avatar-profile-picture-illustration-isolated-vector.jpg'),
                         ):CircleAvatar(
                           radius: 60,
                           backgroundImage: FileImage(controller.pickedImage!),
                         ),
                         InkWell(
                           onTap: ()=>controller.imagePicker(),
                         ),
                         Container(
                           height: 30,
                           width: 30,
                           decoration: BoxDecoration(
                             color:  Colors.blueAccent,
                             shape: BoxShape.circle,
                             border: Border.all(
                                 color:  Colors.white,
                                 width: 2
                             ),
                           ),
                           child: const Icon(
                             Icons.edit,
                             color: Colors.white,
                             size: 20,
                           ),
                         )
                       ],
                     );
                   })

                 ],
               ),
               const Column(
                 children: [
                   SizedBox(height: 30,),
                   CustomField(title: "Your Full Name"),
                   SizedBox(height: 20,),
                   CustomField(title: "Your Phone Number"),
                   SizedBox(height: 20,),
                   CustomField(title: "Your NID Number"),
                   SizedBox(height: 20,),
                 ],
               ),
                 Column(
                 children: [
                   CustomButton(
                     title: "Complete Setup",
                     onTap: () => Get.to(() => const HomeView()),
                   )
                 ],
               ),
             ],
           ),
         ),
       ),
     );
   }
 }
 