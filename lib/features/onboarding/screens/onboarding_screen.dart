
import 'package:a2z_teacher/core/helpers/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/routing/routers.dart';
import '../../../core/theming/text_style.dart';
import '../../../core/utils/strings_texts.dart';
import '../../../core/utils/colors_code.dart';
import '../../../core/utils/images_paths.dart';
import '../widgets/build_onboard_screen.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // controller to keep track with page we are currently on
  final PageController _pageController = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsCode.white,
      body: Container(
        padding: EdgeInsetsDirectional.only(bottom: 40.h,start: 26.h,end: 26.h),
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 2);
                });
              },
              children: const [
                BuildOnboardingScreen(
                  lottiePath: ImagesPaths.animBodyOnBoarding1,
                  titleBoard: StringsTexts.titleOnBoard1,
                  desBoard: StringsTexts.desOnBoard1,
                ),
                BuildOnboardingScreen(
                  lottiePath: ImagesPaths.animBodyOnBoarding2,
                  titleBoard: StringsTexts.titleOnBoard2,
                  desBoard: StringsTexts.desOnBoard2,
                ),
                BuildOnboardingScreen(
                  lottiePath: ImagesPaths.animBodyOnBoarding1,
                  titleBoard: StringsTexts.titleOnBoard3,
                  desBoard: StringsTexts.desOnBoard3,
                ),
              ],
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //skip
                  GestureDetector(
                    onTap: () {
                      context.pushNamed(Routes.loginScreen);
                    },
                    child: Text(
                      StringsTexts.txtSkip,
                      style: TextStyles.font13BlueSemiBold,
                    ),
                  ),

                  //dot Indicator
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                  ),

                  // next or done
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            context.pushNamed(Routes.loginScreen);
                          },
                          child: Text(
                            StringsTexts.txtDone,
                            style: TextStyles.font13BlueSemiBold,
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          },
                          child: Text(
                            StringsTexts.txtNext,
                            style: TextStyles.font13BlueSemiBold,
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
