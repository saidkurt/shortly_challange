import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/route/app_pages.dart';
import 'core/theme/app_theme.dart';
import 'view/page/shorty_page/shortlink_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        locale: Get.deviceLocale,
        debugShowCheckedModeBanner: false,
        getPages: AppPages.pages,
        home: ShortLinkPage(),
        theme: AppTheme.appThemeLight);
  }
}
