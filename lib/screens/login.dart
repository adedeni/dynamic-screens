import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:screens/utils/app_layout.dart';
import 'package:screens/utils/styles.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(context, 20),
          vertical: AppLayout.getHeight(context, 20),
        ),
        child: Column(
          children: [
            Gap(AppLayout.getHeight(context, 10)),
            Center(
              child: CircleAvatar(
                radius: AppLayout.getHeight(context, 35),
                backgroundImage: AssetImage("assets/images/profile.jpg"),
              ),
            ),
            Gap(AppLayout.getHeight(context, 10)),
            Text(
              "Welcome Back",
              style: Styles.headLineStyle2.copyWith(
                color: Colors.white,
                fontSize: AppLayout.getHeight(context, 20),
              ),
            ),
            Gap(AppLayout.getHeight(context, 10)),
            Text("Adedeni Faith", style: Styles.headLineStyle4),
            Gap(AppLayout.getHeight(context, 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  size: 15,
                  color: Colors.cyanAccent,
                  FluentSystemIcons.ic_fluent_lock_filled,
                ),
                Gap(AppLayout.getWidth(context, 10)),
                Text("Passcode", style: Styles.headLineStyle4),
              ],
            ),
            Gap(AppLayout.getHeight(context, 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(6, (index) {
                return Padding(
                  padding: EdgeInsets.only(
                    right:
                        index < 6
                            ? AppLayout.getWidth(context, 13)
                            : 0, //it ensure after the 5th index is generated it give zero padding to the 6th index
                  ),
                  child: InkWell(
                    onTap: () {
                      // print("Tapped $index");
                    },
                    child: CircleAvatar(
                      radius: AppLayout.getHeight(context, 6),
                    ),
                  ),
                );
              }),
            ),

            Gap(AppLayout.getHeight(context, 30)),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 25,
                crossAxisSpacing: 25,
                childAspectRatio: 1.1,
              ),
              itemCount: 9,
              itemBuilder: (context, index) {
                return Center(
                  child: Text(
                    '${index + 1}',
                    style: Styles.headLineStyle2.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),

            Gap(AppLayout.getHeight(context, 25)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap:
                      () => {
                        //print("tapped")
                      },
                  child: Text(
                    "Sign Out",
                    style: Styles.headLineStyle4.copyWith(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                InkWell(
                  onTap:
                      () => {
                        // print("tapped")
                      },
                  child: Text(
                    "0",
                    style: Styles.headLineStyle1.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: AppLayout.getHeight(context, 31),
                      backgroundColor: Colors.greenAccent,
                    ),
                    CircleAvatar(
                      radius: AppLayout.getHeight(context, 30),
                      backgroundColor: const Color(0xFF39029A),
                      child: Image.asset(
                        "assets/images/face_id.png",
                        width: AppLayout.getWidth(context, 26),
                        height: AppLayout.getHeight(context, 26),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
