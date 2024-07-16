import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'a2z_teacher.dart';
import 'core/routing/app_router.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(
    A2ZTeacher(
      appRouter: AppRouter(),
    ),
  );
}
