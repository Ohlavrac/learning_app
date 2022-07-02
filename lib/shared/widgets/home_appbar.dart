import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/app_texts.dart';
import 'appbar_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: const CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/57482542?v=4"),
        ),
        leadingWidth: 75,
        title: Text("Hi Victor", style: AppTexts.mediun,),
        actions: [  
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: AppbarButton(icon: Icons.notifications_active_outlined, onPressed: () {

            },),
          ),
        ],
      );
  }
}