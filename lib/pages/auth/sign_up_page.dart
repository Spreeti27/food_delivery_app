import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:stock_app/base/show_custom_snackbar.dart';
import 'package:stock_app/controllers/auth_controller.dart';
import 'package:stock_app/models/signup_body_model.dart';
import 'package:stock_app/utils/colors.dart';
import 'package:stock_app/widgets/app_text_field.dart';
import 'package:stock_app/widgets/big-text.dart';

import '../../base/custom_loader.dart';
import '../../utils/dimensions.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController=TextEditingController();
    var passwordController=TextEditingController();
    var nameController=TextEditingController();
    var phoneController=TextEditingController();
    var signUpImages= [
      "f.jpg" , "t.png", "g.png"
    ];
    void _registration(AuthController authController){
 var AuthController =authController;
      String name= nameController.text.trim();
      String phone= phoneController.text.trim();
      String email= emailController.text.trim();
      String password= passwordController.text.trim();
      if(name.isEmpty){
        showCustomSnackbar("Type in your name",title: "Name");
      }else if(phone.isEmpty){
        showCustomSnackbar("Type in your phone number",title: "Phone number");
      }
      else if(email.isEmpty){
        showCustomSnackbar("Type in your email address",title: "Email address");
      }
      else if(!GetUtils.isEmail(email)){
        showCustomSnackbar("Type in a valid email address",title: "Valid Email address");
      }
      else if(password.isEmpty){
        showCustomSnackbar("Type in your password",title: "Password");
      }else if(password.length<6){
        showCustomSnackbar("Password can not be less than six characters",title: "Incorrect Password");
      }
      else{
        // showCustomSnackbar("All went well",title: "Perfect");
        SignUpBody signUpBody=   SignUpBody(name:  name,  phone: phone, email: email, password: password);
       authController.registration(signUpBody).then((status){
         if(status.isSuccess){
           print("Success Registration");

         }
         else{
           showCustomSnackbar(status.message);
         }
       });
      }
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body:GetBuilder<AuthController>(builder: (_authController){
        return SingleChildScrollView(
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
              AppTextField(textController: emailController, hintText: "Email", icon: Icons.email),
              SizedBox(height: Dimensions.height20,),
              AppTextField(textController: passwordController, hintText: "Password", icon: Icons.password_sharp),
              SizedBox(height: Dimensions.height20,),
              AppTextField(textController: nameController, hintText: "Name", icon: Icons.person),
              SizedBox(height: Dimensions.height20,),
              AppTextField(textController: phoneController, hintText: "Phone", icon: Icons.phone),
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
              GestureDetector(
                onTap: (){
                  _registration(_authController);
                },
                child: Container(
                  width: Dimensions.screenWidth/2,
                  height: Dimensions.screenHeight/13,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius30),
                      color: AppColors.mainColor
                  ),
                  child: Center(
                    child: BigText(text: "Sign Up",
                      size: Dimensions.font20+Dimensions.font20/2,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: Dimensions.height10,),
              RichText(text: TextSpan(
                  recognizer:TapGestureRecognizer()..onTap=()=>Get.back(),
                  text: "Have an Account already?",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: Dimensions.font20
                  )),
              ),
              SizedBox(height: Dimensions.screenHeight*0.05,),
              RichText(text: TextSpan(
                // recognizer:TapGestureRecognizer()..onTap=()=>Get.back(),
                  text: "Sign Up using one of the following methods",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: Dimensions.font16
                  )),
              ),
              Wrap(
                children: List.generate(3, (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: Dimensions.radius30,
                    backgroundImage: AssetImage("assets/image/"+signUpImages[index]),
                  ),
                )),
              )


            ],
          ),
        );
      })
    );

  }
}
