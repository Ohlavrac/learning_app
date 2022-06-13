import 'package:flutter/material.dart';
import 'package:learning_app/shared/themes/app_colors.dart';
import 'package:learning_app/shared/themes/app_texts.dart';

class CourseCard extends StatelessWidget {
  final void Function() onTap;
  const CourseCard({ Key? key, required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 1, bottom: 10, left: 1, right: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: AppColors.shadow,
                offset: Offset(9, 9),
                blurRadius: 1,
                spreadRadius: 1,
              ),
            ]
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side:  BorderSide(color: Colors.black, width: 2),
            ),
              color: AppColors.primary,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: Image.network(
                          "https://atrevodigital.com.br/wp-content/uploads/2021/06/post_thumbnail-fa35f0f72ea6af1036020fa10763246b-1038x576.jpeg",
                          width: 150,
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(height:5),
                    Text(
                      "UX/UI Design",
                      style: AppTexts.mediun,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: const Text(
                        "vaiter umas estrela aq"
                      ),
                    ),
                    Text(
                      "\$25",
                      style: AppTexts.mediun,
                    )
                  ],
                ),
              ),
            ),
        ),
      ),
    );
  }
}