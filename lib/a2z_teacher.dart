
import 'package:a2z_teacher/core/routing/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/utils/colors_code.dart';

class A2ZTeacher extends StatelessWidget {
  const A2ZTeacher({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:  const Size(375,812),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: ColorsCode.mainBlue,
            scaffoldBackgroundColor: ColorsCode.white
        ),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
