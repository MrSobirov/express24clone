import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyWidgets {
  void showToast(String msg) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 1,
        fontSize: 13.sp,
        gravity: ToastGravity.TOP,
        backgroundColor: Colors.grey,
        textColor: Colors.white
    );
  }
}