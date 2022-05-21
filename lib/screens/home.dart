import 'package:flutter/material.dart';
import 'package:learning_app/shared/themes/app_colors.dart';
import 'package:learning_app/shared/themes/app_texts.dart';
import 'package:learning_app/shared/widgets/course_card.dart';
import 'package:learning_app/shared/widgets/custom_row.dart';
import 'package:learning_app/shared/widgets/mentors_small_card.dart';
import 'package:learning_app/shared/widgets/search_input.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
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
            padding: const EdgeInsets.only(right: 15),
            child: Container(
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
                  icon: Icon(Icons.notifications_active_outlined, color: AppColors.shadow,),
                  onPressed: () {

                  },
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "What course are you\nlooking for?",
                    style: AppTexts.title,
                    textAlign: TextAlign.left,
                  ),
                ),
                SearchInput(),
                CustomRow(title: "Popular Mentors",),
                Container(
                  width: double.infinity,
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      MentorsSmallCard(),
                      MentorsSmallCard(),
                      MentorsSmallCard(),
                      MentorsSmallCard(),
                      MentorsSmallCard(),
                      MentorsSmallCard(),
                      MentorsSmallCard(),
                      MentorsSmallCard(),
                      MentorsSmallCard(),
                      MentorsSmallCard(),
                    ],
                  ),
                ),
                CustomRow(title: "Popular Courses",),
                Container(
                  width: double.infinity,
                  height: 210,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CourseCard(),
                      CourseCard(),
                      CourseCard(),
                      CourseCard(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}