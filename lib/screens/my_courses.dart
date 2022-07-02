import 'package:flutter/material.dart';
import 'package:learning_app/shared/widgets/custom_button.dart';

import '../shared/themes/app_colors.dart';
import '../shared/themes/app_texts.dart';
import '../shared/widgets/appbar_button.dart';

class MyCourses extends StatefulWidget {
  const MyCourses({ Key? key }) : super(key: key);

  @override
  State<MyCourses> createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomButton(width: 110, label: "All",),
              CustomButton(width: 110, label: "Completed",),
              CustomButton(width: 110, label: "In-Progress",),
            ],
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 50,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text("Curso de $index"),
                  ),
                );
              },    
            ),
          )
        ],
      ),
    );
  }
}