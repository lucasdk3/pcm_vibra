import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget forms(
    {onChanged,
    TextEditingController controller,
    String field,
    String error,
    type,
    TextInputAction action,
    IconData icon,
    formated}) {
  return Padding(
    padding: EdgeInsets.all(20.w),
    child: Container(
      height: 40,
      child: TextField(
        textInputAction: action,
        controller: controller,
        style: TextStyle(color: Colors.white),
        keyboardType: type,
        inputFormatters: formated,
        onChanged: onChanged,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          hintText: field,
          labelText: field,
          icon: Icon(icon, color: Colors.white, size: 24),
          errorText: error,
        ),
      ),
    ),
  );
}
