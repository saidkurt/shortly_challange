import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shortly_challange/core/route/app_route.dart';
import 'package:shortly_challange/view/page/shorty_page/shortlink_page.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.shortLinkPage,
      page: () => ShortLinkPage(),
    )
  ];
}
