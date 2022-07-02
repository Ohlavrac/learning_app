import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final String label;

  const CustomButton({ Key? key, required this.width, required this.label }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:  [
                    BoxShadow(
                      color: AppColors.shadow,
                      offset: Offset(7, 7),
                      blurRadius: 1,
                      spreadRadius: 0.1,
                    ),
                  ]
                ),
                child: ElevatedButton(
                  onPressed: () {

                  },
                  child: Text(label),
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.button,
                  ),
                ),
              );
  }
}