
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/text_style.dart';

class BuildOnboardingScreen extends StatelessWidget {
  const BuildOnboardingScreen(
      {super.key,

      required this.lottiePath,
      required this.titleBoard,
      required this.desBoard});

  final String  lottiePath, titleBoard, desBoard;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(
          lottiePath,
          width: 300.w,
          repeat: true,
        ),
        verticalSpace(60.h),
        Text(
          titleBoard,
          style: TextStyles.font24BlueBold,
          textAlign: TextAlign.center,
        ),
        verticalSpace(20.h),
        Text(
          desBoard,
          style: TextStyles.font13GrayNormal,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
