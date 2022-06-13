import 'package:flutter/material.dart';
import 'package:learning_app/shared/themes/app_texts.dart';

import '../themes/app_colors.dart';

class MentorsSmallCard extends StatelessWidget {
  final double radius;

  const MentorsSmallCard({ Key? key, required this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 1, right: 20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: const [
                BoxShadow(
                  color: AppColors.shadow,
                  spreadRadius: 2,
                  blurRadius: 1,
                  offset: Offset(4, 3)
                ),
              ]
            ),
            child: CircleAvatar(
              radius: radius,
              backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/57482542?v=4"),
            ),
          ),
          const SizedBox(height: 10,),
          Text(
            "Fulano",
            style: AppTexts.small,
          )
        ],
      ),
    );
  }
}