import 'package:flutter/material.dart';
import 'package:learning_app/shared/widgets/mentors_small_card.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 360,
              height: 200,
              color: AppColors.shadow
            ),
            Row(
              children: [
                Expanded(child: Text("UX/UI Design", style: AppTexts.subtitle,),),
                Text("5.0", style: AppTexts.small,),
                Icon(Icons.star, color: Colors.orange,),
              ],
            ),
            Text("25 lessons", style: AppTexts.small,),
            Row(
              children: [
                Column(
                  children: [
                    Text("Mentors", style: AppTexts.mediun,),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/57482542?v=4"),
                        ),
                        Text(" Flint", style: AppTexts.description,)
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
                        CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/57482542?v=4"),
                        ),
                        CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/57482542?v=4"),
                        ),
                        CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/57482542?v=4"),
                        ),
                        CircleAvatar(
                          radius: 15,
                          child: Text("+5"),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Text("Description", style: AppTexts.description,),
            Text(
              "Mauris at leo interdum, accumsan magna a, placerat mauris. Nulla egestas euismod tristique. Maecenas risus metus, venenatis vitae nulla ultricies, bibendum dictum risus. Duis fringilla sem nulla, vitae gravida augue finibus sed. Pellentesque rhoncus lobortis orci non efficitur. Vestibulum posuere mauris eu ultricies varius. Curabitur vulputate ante ac pharetra lobortis. Suspendisse rutrum commodo ante, sed viverra ipsum fermentum non. Praesent tincidunt tempus ante, at egestas est. Donec tincidunt luctus augue sed tempus. Phasellus mattis sit amet neque a posuere",
              maxLines: 7,
              style: AppTexts.small,
              textAlign: TextAlign.justify,
            ),
            Text("Lessons", style: AppTexts.subtitle,),
            Expanded(
              child: ListView.builder(
                itemCount: 25,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.play_circle_outline, color: AppColors.button,),
                      title: Text("Lesson $index", style: AppTexts.mediun,),
                      trailing: Text("25 Sec", style: AppTexts.small,),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
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
                child: const Text("Join Now - 25\$"),
                style: ElevatedButton.styleFrom(
                  primary: AppColors.button,
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}