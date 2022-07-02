import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class BannerCourse extends StatelessWidget {
  const BannerCourse({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: AppColors.shadow,
            offset: Offset(9, 9),
            blurRadius: 1,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side:  BorderSide(color: Colors.black, width: 2),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            "https://atrevodigital.com.br/wp-content/uploads/2021/06/post_thumbnail-fa35f0f72ea6af1036020fa10763246b-1038x576.jpeg",
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}