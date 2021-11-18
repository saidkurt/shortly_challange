import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shortly_challange/controller/short_link_controlller.dart';
import 'package:shortly_challange/core/extension/string_overflow_extension.dart';

class ShortLinkTextListContainer extends StatelessWidget {
  ShortLinkTextListContainer(
      {Key? key,
      required this.index,
      required this.text,
      required this.textColor})
      : super(key: key);

  String? text;
  int index;
  Color textColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 5,
        child: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            text!.overFlow(),
            style: GoogleFonts.ubuntu(fontSize: 25, color: textColor),
          ),
        ));
  }
}
