import 'package:flutter/material.dart';
import 'package:learning_app/shared/widgets/banner_course.dart';
import 'package:learning_app/shared/widgets/custom_button.dart';
import 'package:learning_app/shared/widgets/small_avatar.dart';

import '../shared/themes/app_colors.dart';
import '../shared/themes/app_texts.dart';
import '../shared/widgets/appbar_button.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppbarButton(icon: Icons.arrow_back, onPressed: () {
              Navigator.popAndPushNamed(context, "/home");
            },),
            Text("Course Details", style: AppTexts.title,),
            AppbarButton(icon: Icons.notifications_active_outlined, onPressed: () {},),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: BannerCourse()),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 11),
              child: Row(
                children: [
                  Expanded(child: Text("UX/UI Design", style: AppTexts.subtitle,),),
                  Text("5.0", style: AppTexts.small,),
                  const Icon(Icons.star, color: Colors.orange,),
                ],
              ),
            ),
            Text("25 lessons", style: AppTexts.small,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 9),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text("Mentors", style: AppTexts.mediun,),
                      Row(
                        children: [
                          const SmallAvatar(),
                          Text("  Flint", style: AppTexts.description,)
                        ],
                      )
                    ],
                  ),
                  const SizedBox(width: 100,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Menbers", style: AppTexts.mediun,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          SmallAvatar(),
                          SmallAvatar(),
                          SmallAvatar(),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Text("Description", style: AppTexts.description,),
            Padding(
              padding: const EdgeInsets.only(top: 6, bottom: 15),
              child: Text(
                "Mauris at leo interdum, accumsan magna a, placerat mauris. Nulla egestas euismod tristique. Maecenas risus metus, venenatis vitae nulla ultricies, bibendum dictum risus. Duis fringilla sem nulla, vitae gravida augue finibus sed. Pellentesque rhoncus lobortis orci non efficitur. Vestibulum posuere mauris eu ultricies varius. Curabitur vulputate ante ac pharetra lobortis. Suspendisse rutrum commodo ante, sed viverra ipsum fermentum non. Praesent tincidunt tempus ante, at egestas est. Donec tincidunt luctus augue sed tempus. Phasellus mattis sit amet neque a posuere",
                maxLines: 5,
                style: AppTexts.small,
                textAlign: TextAlign.justify,
              ),
            ),
            Text("Lessons", style: AppTexts.subtitle,),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 25,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10, bottom: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.shadow,
                          offset: Offset(5, 5),
                          blurRadius: 1,
                          spreadRadius: 1,
                        ),
                      ]
                    ),
                    child: Card(
                      child: ListTile(
                        leading: const Icon(Icons.play_circle_outline, color: AppColors.button,),
                        title: Text("Lesson ${index+1}", style: AppTexts.mediun,),
                        trailing: Text("25 Sec", style: AppTexts.small,),
                      ),
                    ),
                  );
                },
              ),
            ),
            Center(
              child: CustomButton(width: 350, label: "Join Now - 25\$",),
            ),
            const SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}