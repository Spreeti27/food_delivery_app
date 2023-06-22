import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_app/utils/colors.dart';
import 'package:stock_app/utils/dimensions.dart';
import 'package:stock_app/widgets/account_widget.dart';
import 'package:stock_app/widgets/app_icon.dart';
import 'package:stock_app/widgets/big-text.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: BigText(text: "Profile",size: 24,color: Colors.white,),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: Dimensions.height20),
        child: Column(
          children: [
            AppIcon(icon: Icons.person,backgroundColor: AppColors.mainColor,iconColor: Colors.white,
            iconSize: Dimensions.height45+Dimensions.height30,
            size: Dimensions.height15*10,),
            SizedBox(height: Dimensions.height30,),
  Expanded(
    child: SingleChildScrollView(
      child: Column(
        children: [
          AccountWidget(appIcon:  AppIcon(icon: Icons.person,backgroundColor: AppColors.mainColor,iconColor: Colors.white,
            iconSize: Dimensions.height10*5/2,
            size: Dimensions.height10*5,), bigText: BigText(text: "Shruti"),
          ),
          SizedBox(height: Dimensions.height20,),
          AccountWidget(appIcon:  AppIcon(icon: Icons.phone,backgroundColor: AppColors.yellowColor,iconColor: Colors.white,
            iconSize: Dimensions.height10*5/2,
            size: Dimensions.height10*5,), bigText: BigText(text: "7217299420"),
          ),
          SizedBox(height: Dimensions.height20,),
          AccountWidget(appIcon:  AppIcon(icon: Icons.email,backgroundColor: AppColors.yellowColor,iconColor: Colors.white,
            iconSize: Dimensions.height10*5/2,
            size: Dimensions.height10*5,), bigText: BigText(text: "preeti@ece.iitr.ac.in"),
          ),
          SizedBox(height: Dimensions.height20,),
          AccountWidget(appIcon:  AppIcon(icon: Icons.location_on,backgroundColor: AppColors.yellowColor,iconColor: Colors.white,
            iconSize: Dimensions.height10*5/2,
            size: Dimensions.height10*5,), bigText: BigText(text: "Fill in your address"),
          ),
          SizedBox(height: Dimensions.height20,),
          AccountWidget(appIcon:  AppIcon(icon: Icons.message_outlined,backgroundColor: Colors.redAccent,iconColor: Colors.white,
            iconSize: Dimensions.height10*5/2,
            size: Dimensions.height10*5,), bigText: BigText(text: "Shruti"),
          ),
          SizedBox(height: Dimensions.height20,),
        ],
      ),
    ),
  )
          ],
        ),
      ),
    );
  }
}
