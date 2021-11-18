import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class EmptyListError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.error,
            color: HexColor("#2bcfce"),
            size: 50,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Please add shortlink",
            style: GoogleFonts.ubuntu(fontSize: 20),
          )
        ],
      ),
    );
  }
}
