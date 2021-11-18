import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextInput extends StatelessWidget {
  CustomTextInput(
      {Key? key,
      required this.textEditingController,
      required this.hintTextValue,
      this.borderSideColor = Colors.white,
      required this.hintTextColor})
      : super(key: key);

  final TextEditingController textEditingController;
  String? hintTextValue;
  Color? hintTextColor;
  Color? borderSideColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.white),
      width: Get.width / 1.5,
      height: Get.height / 17,
      child: Center(
        child: TextField(
          controller: textEditingController,
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: borderSideColor!, width: 2.0),
              ),
              hintStyle: GoogleFonts.ubuntu(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: hintTextColor),
              hintText: hintTextValue),
        ),
      ),
    );
  }
}
