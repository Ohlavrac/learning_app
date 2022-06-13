import 'package:flutter/material.dart';
import 'package:learning_app/shared/themes/app_colors.dart';
import 'package:learning_app/shared/themes/app_texts.dart';
import 'package:learning_app/shared/widgets/appbar_button.dart';
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
            padding: EdgeInsets.only(right: 15),
            child: AppbarButton(icon: Icons.notifications_active_outlined, onPressed: () {

            },),
          ),
        ],
      ),
      body: Padding(
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
      ),
    );
  }
}