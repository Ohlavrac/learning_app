import 'package:flutter/material.dart';

import '../shared/themes/app_texts.dart';
import '../shared/widgets/course_card.dart';
import '../shared/widgets/custom_row.dart';
import '../shared/widgets/mentors_small_card.dart';
import '../shared/widgets/search_input.dart';

class Courses extends StatefulWidget {
  const Courses({ Key? key }) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "What course are you\nlooking for?",
                    style: AppTexts.title,
                    textAlign: TextAlign.left,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25, bottom: 25, right: 6),
                  child: SearchInput(),
                ),
                const CustomRow(title: "Popular Mentors",),
                SizedBox(
                  width: double.infinity,
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return MentorsSmallCard(radius: 20);
                    },
                  ),
                ),
                const SizedBox(height: 20,),
                const CustomRow(title: "Popular Courses",),
                SizedBox(
                  height: 215,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return CourseCard(onTap: () {
                        Navigator.popAndPushNamed(context, "/course_details");
                      },);
                    },
                  ),
                ),
                const SizedBox(height: 20,),
                const CustomRow(title: "Student's Favorite",),
                SizedBox(
                  height: 210,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return CourseCard(onTap: () {},);
                    },
                  ),
                ),
                const SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      );
  }
}