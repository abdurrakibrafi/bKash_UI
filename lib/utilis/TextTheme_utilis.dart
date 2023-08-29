import 'package:flutter/material.dart';

TextStyle colorSystem(int code) {
  if (code == 1) {
    return TextStyle(
      color: Colors.green,
      fontWeight: FontWeight.w600,
      fontSize: 16,
    );
  } else {
    return TextStyle(
      color: Colors.red,
      fontWeight: FontWeight.w600,
      fontSize: 16,
    );
  }
}
