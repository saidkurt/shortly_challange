import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

mixin ToasTMessage {
  void showToast(String message) => Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.blueGrey,
      textColor: Colors.white,
      fontSize: 14.0);
}
