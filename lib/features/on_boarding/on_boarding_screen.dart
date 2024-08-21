import 'package:doc/core/helpers/spacing.dart';
import 'package:doc/features/on_boarding/widgets/doc_logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doc_details_text_and_get_started_button.dart';
import 'widgets/doc_image_and_text.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                const DocLogoAndName(),
                verticalSpace(30),
                const DocImageAndText(),
                const DocDetailsTextAndGetStartedButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
