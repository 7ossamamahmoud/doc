import 'package:doc/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins',
    color: Colors.black,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins',
    color: ColorsManager.bluePrimaryColor,
  );

  static TextStyle font14GreyRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    fontFamily: 'Poppins-R',
    color: ColorsManager.greyColor,
  );

  static TextStyle font14WhiteBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins-R',
    color: Colors.white,
  );
}