import 'package:doc/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';

class DocDetailsTextAndGetStartedButton extends StatelessWidget {
  const DocDetailsTextAndGetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          Text(
            "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
            style: TextStyles.font14GreyRegular,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.h,),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorsManager.bluePrimaryColor,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              minimumSize: const Size(double.infinity, 52),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),

              ),
            ),
            child: Text(
              "Get Started",
              style: TextStyles.font14WhiteBold,
            ),
          ),
        ],
      ),
    );
  }
}
