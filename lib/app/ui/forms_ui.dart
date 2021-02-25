import 'package:flutter/material.dart';

Widget forms(
    {onChanged,
    TextEditingController controller,
    String field,
    String error,
    type,
    formated}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      controller: controller,
      keyboardType: type,
      inputFormatters: formated,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
        hintText: field,
        labelText: field,
        hintStyle: TextStyle(),
        errorText: error,
      ),
    ),
  );
}
