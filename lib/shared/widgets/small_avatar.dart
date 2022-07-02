import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class SmallAvatar extends StatelessWidget {
  const SmallAvatar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: const CircleAvatar(
        radius: 15,
        backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/57482542?v=4"),
      ),
    );
  }
}