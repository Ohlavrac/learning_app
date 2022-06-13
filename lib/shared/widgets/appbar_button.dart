import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class AppbarButton extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;

  const AppbarButton({ Key? key, required this.icon, required this.onPressed }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow,
            spreadRadius: 2,
            blurRadius: 1,
            offset: Offset(4, 3)
          ),
        ],
      ),
      child: CircleAvatar(
        backgroundColor: AppColors.primary,
        child: IconButton(
          icon: Icon(icon, color: AppColors.shadow,),
          onPressed: onPressed
        ),
      ),
    );
  }
}