import 'package:flutter/material.dart';
import 'package:learning_app/shared/themes/app_colors.dart';
import 'package:learning_app/shared/themes/app_texts.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow,
            offset: Offset(10, 10),
            blurRadius: 1,
            spreadRadius: 1,
          ),
        ]
      ),
      child: Card(
        color: AppColors.primary,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  "https://atrevodigital.com.br/wp-content/uploads/2021/06/post_thumbnail-fa35f0f72ea6af1036020fa10763246b-1038x576.jpeg",
                  width: 150,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                "UX/UI Design",
                style: AppTexts.mediun,
              ),
              Text(
                "vaiter umas estrela aq"
              ),
              Text(
                "\$25",
                style: AppTexts.mediun,
              )
            ],
          ),
        ),
      ),
    );
  }
}