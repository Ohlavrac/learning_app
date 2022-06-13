import 'package:flutter/material.dart';
import 'package:learning_app/shared/themes/app_colors.dart';
import 'package:learning_app/shared/themes/app_texts.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow,
            offset: Offset(9, 9),
            blurRadius: 1,
            spreadRadius: 1,
          ),
        ]
      ),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: AppColors.primary,
          filled: true,
          contentPadding: const EdgeInsets.only(top: 20, bottom: 5),
          hintStyle: AppTexts.search,
          hintText: "Search courses, mentors",
          prefixIcon: const Icon(Icons.search, color: AppColors.shadow,),
          prefixIconColor: AppColors.shadow,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}