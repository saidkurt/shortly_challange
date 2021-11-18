import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShortyListIconDeleteButton extends StatelessWidget {
  ShortyListIconDeleteButton({Key? key, required this.onPressed})
      : super(key: key);

  Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          alignment: Alignment.centerRight,
          child: IconButton(
            onPressed: onPressed,
            icon: SvgPicture.asset(
              "assets/del.svg",
              height: 25,
              fit: BoxFit.fill,
            ),
          ),
        ));
  }
}
