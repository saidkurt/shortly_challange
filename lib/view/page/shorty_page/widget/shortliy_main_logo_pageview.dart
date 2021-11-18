import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ShortlyMainLogo extends StatelessWidget {
  const ShortlyMainLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/logo.svg"),
          const SizedBox(
            height: 30,
          ),
          SvgPicture.asset("assets/illustration.svg"),
          const SizedBox(height: 10),
          Text(
            "Let's get started!",
            style:
                GoogleFonts.ubuntu(fontSize: 27, fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 10),
          Text("Paste your first link into",
              style: GoogleFonts.ubuntu(
                  fontSize: 20, fontWeight: FontWeight.w500)),
          Text("the field to shorten it",
              style:
                  GoogleFonts.ubuntu(fontSize: 20, fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
