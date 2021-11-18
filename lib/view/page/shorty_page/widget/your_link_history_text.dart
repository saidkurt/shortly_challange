import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class YourLinkHistoryTextWidget extends StatelessWidget {
  const YourLinkHistoryTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: Get.width,
      child: Center(
        child: Text(
          "Your Link History",
          style: GoogleFonts.ubuntu(fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
