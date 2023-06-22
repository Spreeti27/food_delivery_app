import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:stock_app/pages/auth/sign_up_page.dart';
import 'package:stock_app/utils/colors.dart';
import 'package:stock_app/widgets/app_text_field.dart';
import 'package:stock_app/widgets/big-text.dart';

import '../../utils/dimensions.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController=TextEditingController();
    var passwordController=TextEditingController();
    var nameController=TextEditingController();
    var phoneController=TextEditingController();
  return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: Dimensions.screenHeight*0.05,),
            Container(
              child: Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage:
                  AssetImage("assets/image/logo1.jpg"),),
              ),
            ),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: Dimensions.width20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text("Hello",style: TextStyle(
                    fontSize: Dimensions.font20*3+Dimensions.font20/2,
                    fontWeight: FontWeight.bold
                  ),),
                  Text("Sign into your account",style: TextStyle(
                      fontSize: Dimensions.font20,
                      // fontWeight: FontWeight.bold
                  ),)
                ],
              ),
            ),
            SizedBox(height: Dimensions.height20,),
            AppTextField(textController: emailController, hintText: "Email", icon: Icons.email),
            SizedBox(height: Dimensions.height20,),
            AppTextField(textController: passwordController, hintText: "Password", icon: Icons.password_sharp),
            SizedBox(height: Dimensions.height20,),

            // Container(
            //   margin: EdgeInsets.only(left: Dimensions.height20,right: Dimensions.height20,),
            //   decoration: BoxDecoration(color: Colors.white,
            //   borderRadius: BorderRadius.circular(Dimensions.radius30),
            //   boxShadow: [
            //     BoxShadow(
            //       blurRadius: 10,
            //       spreadRadius: 7,
            //       offset: Offset(1, 10),
            //       color: Colors.grey.withOpacity(0.2)
            //     )
            //   ]),
            //   child: TextField(
            //     controller: emailController,
            //       decoration: InputDecoration(
            //         hintText: "Email",
            //         prefixIcon: Icon(Icons.email,color: AppColors.yellowColor,),
            //         focusedBorder: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(Dimensions.radius30),
            //           borderSide: BorderSide(
            //             width: 1.0,
            //             color: Colors.white,
            //           ),
            //
            //         ),
            //         enabledBorder: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(Dimensions.radius30),
            //             borderSide: BorderSide(
            //               width: 1.0,
            //               color: Colors.white,
            //             )
            //         )
            //       ),
            //   ),
            // )

            SizedBox(height: Dimensions.height10,),
           Row(children: [
             Expanded(child: Container()),
             RichText(text: TextSpan(

               text: "Sign in to your account",
               style: TextStyle(
                   color: Colors.grey[500],
                   fontSize: Dimensions.font20
               )),
           ),
             SizedBox(width: Dimensions.width20,)

           ],),
            SizedBox(height: Dimensions.screenHeight*0.05,),
            Container(
              width: Dimensions.screenWidth/2,
              height: Dimensions.screenHeight/13,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                  color: AppColors.mainColor
              ),
              child: Center(
                child: BigText(text: "Sign In",
                  size: Dimensions.font20+Dimensions.font20/2,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: Dimensions.screenHeight*0.05,),
            RichText(text: TextSpan(

                text: "Don\'t have an account?",
                style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: Dimensions.font20
                ),
            children: [
               TextSpan(
   recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage(),transition: Transition.fade),
                  text: " Create",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                      color: AppColors.mainBlackColor,
                      fontSize: Dimensions.font20
                  ),)
            ]),
            ),


          ],
        ),
      ),
    );
  }
}
