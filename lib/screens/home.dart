import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:screens/utils/app_info_list.dart';
import 'package:screens/utils/app_layout.dart';
import 'package:screens/utils/styles.dart';
import 'package:screens/widgets/virtual_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: Styles.backgroundColor),
            padding: EdgeInsets.only(
              top: AppLayout.getHeight(context, 20),
              left: AppLayout.getWidth(context, 20),
              // right: AppLayout.getWidth(context, 20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dashboard",
                          style: Styles.headLineStyle1.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Text("Good Afternoon", style: Styles.headLineStyle4),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        right: AppLayout.getWidth(context, 20),
                      ),
                      child: CircleAvatar(
                        radius: AppLayout.getHeight(context, 28),
                        backgroundImage: const AssetImage(
                          'assets/images/profile.jpg',
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 20)),
                Divider(color: Colors.grey.shade500),
                Gap(AppLayout.getHeight(context, 10)),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Wallet Balance", style: Styles.headLineStyle4),
                        Text("\$9,782.42", style: Styles.headLineStyle3),
                      ],
                    ),
                    Gap(AppLayout.getWidth(context, 40)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Cards Active", style: Styles.headLineStyle4),
                        Text("3", style: Styles.headLineStyle3),
                      ],
                    ),
                    Gap(AppLayout.getWidth(context, 90)),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(context, 7),
                        horizontal: 14,
                      ),
                      decoration: BoxDecoration(color: Colors.white),
                      child: InkWell(
                        onTap: () {
                          // print("tapped");
                        },

                        child: Container(
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(200),
                          // ),
                          child: Column(
                            children: [
                              Text(
                                "Edit ID",
                                style: Styles.headLineStyle4.copyWith(
                                  color: Styles.backgroundColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(context, 10)),
                Divider(color: Colors.grey.shade500),
                Gap(AppLayout.getHeight(context, 10)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      VirtualCard(cardBalance: cardList[0], bigCard: true),
                      SizedBox(width: AppLayout.getWidth(context, 15)),
                      VirtualCard(cardBalance: cardList[1], isColor: true),
                    ],
                  ),
                ),

                Gap(AppLayout.getHeight(context, 20)),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(color: const Color(0xFFF8FDFF)),
            padding: EdgeInsets.only(
              top: AppLayout.getHeight(context, 15),
              left: AppLayout.getWidth(context, 20),
              right: AppLayout.getWidth(context, 20),
              bottom: AppLayout.getHeight(context, 10),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFEBF4F8),
                borderRadius: BorderRadius.circular(
                  AppLayout.getWidth(context, 10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 3,
                    spreadRadius: 3,
                  ),
                ],
              ),
              padding: EdgeInsets.only(
                top: AppLayout.getHeight(context, 10),
                left: AppLayout.getWidth(context, 30),
                right: AppLayout.getWidth(context, 30),
              ),
              child: Column(
                children: [
                  Text(
                    "Change user profile",
                    style: Styles.headLineStyle3.copyWith(
                      color: const Color(0xFF233FCB),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Choose one card as new profile",
                    style: Styles.headLineStyle4,
                  ),
                  Gap(AppLayout.getHeight(context, 20)),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: const Color(0xFFF8FDFF)),
            padding: EdgeInsets.only(
              top: AppLayout.getHeight(context, 20),
              left: AppLayout.getWidth(context, 20),
              right: AppLayout.getWidth(context, 20),
              bottom: AppLayout.getHeight(context, 10),
            ),
            child: Wrap(
              spacing: AppLayout.getWidth(context, 15),
              runSpacing: AppLayout.getHeight(context, 20),
              children: List.generate(5, (index) {
                return Stack(
                  children: [
                    Container(
                      width: AppLayout.getWidth(context, 100),
                      height: AppLayout.getHeight(context, 140),
                      decoration: BoxDecoration(
                        color:
                            index == 0 ? const Color(0xFF233FCB) : Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(AppLayout.getHeight(context, 10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 70),

                          Text(
                            [
                              'Promise Bolu',
                              'Mayor Ade',
                              'Dan Chinsom',
                              'Sauce John',
                              'Matthew Ade',
                            ][index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color:
                                  index == 0
                                      ? Colors.white
                                      : const Color(0xFF233FCB),
                              fontSize: AppLayout.getHeight(context, 12),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            [
                              'Student 1',
                              'Student 2',
                              'Student 3',
                              'Student 4',
                              'Tutor',
                            ][index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color:
                                  index == 0
                                      ? Colors.white
                                      : const Color(0xFF2B3150),
                              fontSize: AppLayout.getHeight(context, 10),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Positioned(
                      top: -30,
                      right: -5,
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(
                          color:
                              index == 0
                                  ? const Color(0xFF3B4DA7)
                                  : const Color(0xFFF5F5F5),
                          fontWeight: FontWeight.bold,
                          fontSize: AppLayout.getHeight(context, 90),
                        ),
                      ),
                    ),

                    Positioned(
                      top: 2,
                      left: 5,
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(
                          color:
                              index == 0
                                  ? Colors.white
                                  : const Color(0xFF233FCB),
                          fontWeight: FontWeight.bold,
                          fontSize: AppLayout.getHeight(context, 20),
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
