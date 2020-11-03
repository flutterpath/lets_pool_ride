import 'package:flutter/material.dart';
import 'package:lets_pool/utils/my_color.dart';

class SearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: new InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          contentPadding: const EdgeInsets.only(right: 10),
          prefixIcon: Icon(Icons.search, color: MyColors.greyText),
          filled: true,
          hintStyle: new TextStyle(color: MyColors.greyText),
          hintText: "Search",
          fillColor: MyColors.primaryLight),
    );
  }
}
