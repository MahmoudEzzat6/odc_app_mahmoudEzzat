import 'package:flutter/material.dart';
import 'package:odc_app/constant/theme.dart';

Widget defaultTextField({
  required TextEditingController? controller,
  textColor,
  TextInputType? type,
  Function()? onTap,
  Color? color,
  Color? hintColor,
  Function(String)? onChange,
  required String? Function(String?) validate,
  Function(String)? onSubmit,
  bool isPassword = false,
  required String? label,
  String? vector,
  IconData? suffix,suffixColor,
  Function()? suffixPress,
}) {
  return TextFormField(
    showCursor: true,
    cursorColor: mainColor,
    style: TextStyle(color: color),
    controller: controller,
    keyboardType: type,
    obscureText: isPassword,
    onChanged: onChange,
    onTap: onTap,
    onFieldSubmitted: onSubmit,
    validator: validate,
    decoration: InputDecoration(
      errorStyle: const TextStyle(color: Colors.red),
      labelStyle: const TextStyle(color: Colors.black38),
      labelText: label,
      prefixIcon: Image(image: AssetImage('$vector')),
      suffixIcon: suffix != null
          ? IconButton(onPressed: suffixPress, icon: Icon(suffix,color: suffixColor,))
          : null,
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.08)),
      ),
    ),
  );
}

Widget defaultButton({
  double width = double.infinity,
  Color? background,
  Color? textColor,
  bool isUpper = true,
  required VoidCallback onTap,
  required String text,
}) =>
    Container(
      decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(10)
      ),
      width: width,
      // color: background,
      child: MaterialButton(
        onPressed: onTap,
        child: Text(
          isUpper ? text.toUpperCase() : text,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );