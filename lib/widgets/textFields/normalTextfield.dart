import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';

class NormalTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final void Function() onTap;
  final Widget suffix;
  final bool readOnly;
  final int maxLength;
  final EdgeInsets contentPadding;
  const NormalTextField({Key key, this.hintText, this.controller, this.suffix, this.readOnly, this.maxLength, this.onTap, this.contentPadding, this.labelText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(

      onTap: onTap,
      cursorColor: MyColors.primary,
      maxLength: maxLength,
      controller: controller,
      readOnly: readOnly ?? false,
      decoration: InputDecoration(
        contentPadding: contentPadding ?? const EdgeInsets.all(0),
          counterStyle: TextStyle(height: double.minPositive,),
          counterText: "",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: MyColors.primary),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: MyColors.primary),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: MyColors.primary),
        ),
        suffixIcon : suffix,
        hintText: hintText,
        labelText: labelText,
        labelStyle: TextStyle(
          color: MyColors.greyText,
        ),
        hintStyle: TextStyle(
          color: MyColors.greyText,
        ),
      ),
    );
  }
}
