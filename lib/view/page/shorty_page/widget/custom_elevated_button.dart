import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:shortly_challange/core/const/app_color.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(
      {Key? key, required this.onPressed, required this.title, this.isLoading})
      : super(key: key);
  Function() onPressed;
  String? title;
  bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      width: Get.width / 1.5,
      height: Get.height / 17,
      child: ElevatedButton(
          onPressed: onPressed,
          child: isLoading == true
              ? const Center(
                  child: SpinKitWave(
                  color: Colors.white,
                  size: 30,
                ))
              : Text(
                  title!,
                  style: const TextStyle(fontSize: 20),
                )),
    );
  }
}
