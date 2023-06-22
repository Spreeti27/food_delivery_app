import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stock_app/widgets/app_icon.dart';
import 'package:stock_app/widgets/big-text.dart';

import '../utils/dimensions.dart';

class AccountWidget extends StatelessWidget {
  AppIcon appIcon;
  BigText bigText;
  AccountWidget({Key? key,required this.appIcon, required this.bigText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.only(top: Dimensions.width10,
      left: Dimensions.width20,bottom: Dimensions.width10),
      child: Row(
        children: [appIcon,
        SizedBox(width: Dimensions.width20,),
        bigText],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(
          offset: Offset(0,2),
          blurRadius: 1,
      color: Colors.grey.withOpacity(0.2),),
        ],


        ),
      );

  }
}
