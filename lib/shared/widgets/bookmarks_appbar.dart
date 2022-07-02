import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/app_texts.dart';
import 'appbar_button.dart';

class BookMarksAppBar extends StatelessWidget {
  const BookMarksAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("My Courses", style: AppTexts.title,),
            AppbarButton(icon: Icons.notifications_active_outlined, onPressed: () {},),
          ],
        ),
      );
  }
}