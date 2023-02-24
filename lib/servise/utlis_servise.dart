import 'package:flutter/material.dart';

class Utils {

  static void snackBarError(String text, context) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(text),backgroundColor: Colors.red,));
  }

  static void snackBarSuccess(String text, context) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(text),backgroundColor: Colors.green,));
  }



}