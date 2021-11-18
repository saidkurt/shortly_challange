import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shortly_challange/core/const/app_color.dart';

class ShortlyInputBackground extends StatelessWidget {
  const ShortlyInputBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backGroundColor,
      alignment: Alignment.topRight,
      child: Opacity(
        opacity: 0.7,
        child: SvgPicture.asset(
          "assets/shape.svg",
          height: Get.height / 7,
        ),
      ),
    );
  }
}
