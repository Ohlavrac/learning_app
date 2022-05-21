import 'package:flutter/material.dart';
import 'package:learning_app/shared/themes/app_texts.dart';

import '../themes/app_colors.dart';

class MentorsSmallCard extends StatelessWidget {
  const MentorsSmallCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadow,
                  spreadRadius: 2,
                  blurRadius: 1,
                  offset: Offset(4, 3)
                ),
              ]
            ),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage("https://this-person-does-not-exist.com/img/avatar-f47628fced4c11da5250055ecb3f2767.jpg"),
            ),
          ),
          SizedBox(height: 10,),
          Text(
            "Fulano",
            style: AppTexts.small,
          )
        ],
      ),
    );
  }
}