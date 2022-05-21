import 'package:flutter/material.dart';

import '../themes/app_texts.dart';

class CustomRow extends StatelessWidget {
  final String title;
  const CustomRow({ Key? key, required this.title }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppTexts.subtitle,),
        TextButton(
          child: Text("view all", style: AppTexts.link,),
          onPressed: () {

          },
        )
      ],
    );
  }
}