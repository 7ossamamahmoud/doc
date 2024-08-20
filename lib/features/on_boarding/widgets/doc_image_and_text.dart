import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theming/styles.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/svgs/docdoc_logo_low_opacity.svg"),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              stops: const [0.15, 0.5],
            ),
          ),
          child: Image.asset(
            "assets/images/onBoarding_doc.png",
          ),
        ),
        Positioned(
          bottom: 25,
          left: 0,
          right: 0,
          child: Text(
            "Best Doctor Appointment App",
            style: TextStyles.font32BlueBold,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
