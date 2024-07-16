
import 'package:a2z_teacher/core/helpers/extentions.dart';
import 'package:flutter/material.dart';

import '../../../core/routing/routers.dart';
import '../../../core/theming/text_style.dart';
import '../../../core/utils/strings_texts.dart';
import '../../../core/utils/colors_code.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorsCode.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 52)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text(
        StringsTexts.txGetStartedButton,
        style: TextStyles.font16WhiteMedium,
      ),
    );
  }
}
