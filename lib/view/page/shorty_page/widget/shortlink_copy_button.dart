import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShortLinkCopyButton extends StatelessWidget {
  ShortLinkCopyButton(
      {Key? key, required this.text, required this.onPressed, this.buttonColor})
      : super(key: key);
  String? text;
  Function() onPressed;
  Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 40,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(buttonColor!)),
        onPressed: onPressed,
        child: Text(
          text!,
          style: GoogleFonts.ubuntu(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
