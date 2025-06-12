import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:screens/utils/app_layout.dart';
import 'package:screens/utils/styles.dart';

class VirtualCard extends StatelessWidget {
  final bool? isColor;
  final bool? bigCard;
  final Map<String, dynamic> cardBalance;

  const VirtualCard({
    super.key,
    this.isColor,
    this.bigCard,
    required this.cardBalance,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Stack(
      children: [
        Container(
          height:
              bigCard == true
                  ? AppLayout.getHeight(context, 130)
                  : AppLayout.getHeight(context, 110),
          width: bigCard == true ? size.width * .65 : size.width * .47,
          decoration: BoxDecoration(
            color: isColor == null ? Colors.white : const Color(0xFFA39C9C),
            borderRadius: BorderRadius.circular(
              AppLayout.getHeight(context, 15),
            ),
          ),
        ),
        
        Positioned(
          bottom: AppLayout.getHeight(context, -20),
          right: AppLayout.getWidth(context, -2),
          child: Container(
            padding: EdgeInsets.all(AppLayout.getWidth(context, 40)),
            decoration: BoxDecoration(
              color: const Color(0xFFF4F3F8).withOpacity(0.5), // ← semi-transparent
              shape: BoxShape.circle,
            ),
          ),
        ),

        
        Positioned(
          top: AppLayout.getHeight(context, 22),
          right: AppLayout.getWidth(context, -37),
          child: Container(
            padding: EdgeInsets.all(AppLayout.getWidth(context, 37)),
            decoration: BoxDecoration(
              color:  const Color(0xFFE7E7E7).withOpacity(0.5), // ← semi-transparent
              shape: BoxShape.circle,
            ),
          ),
        ),

        Positioned(
          top: AppLayout.getHeight(context, 10),
          right: AppLayout.getWidth(context, 20),

          child: Row(
            children: [
              CircleAvatar(
                maxRadius: AppLayout.getHeight(context, 12),
                backgroundColor: Colors.transparent,
                child: Icon(
                  FluentSystemIcons.ic_fluent_app_folder_regular,
                  color: Styles.textColor,
                  size: AppLayout.getWidth(context, 20),
                ),
              ),

              Text(
                "Virtual Card",
                style: TextStyle(
                  color: Styles.textColor,
                  fontWeight: FontWeight.w500,
                  fontSize: AppLayout.getHeight(context, 12),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: AppLayout.getHeight(context, 15),
          left: AppLayout.getWidth(context, 15),

          child: Row(
            children: [
              Text(
                "Current Balance",
                style: TextStyle(
                  color: Styles.backgroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: AppLayout.getHeight(context, 12),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: AppLayout.getHeight(context, 33),
          left: AppLayout.getWidth(context, 15),

          child: Row(
            children: [
              Text(
                cardBalance['balance'],
                style: TextStyle(
                  color: Styles.backgroundColor,
                  fontWeight: FontWeight.bold,
                  fontSize: AppLayout.getHeight(context, 20),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: AppLayout.getHeight(context, 10),
          left: AppLayout.getWidth(context, 15),

          child: Row(
            children: [
              Text(
                "**** **** **** ****",
                style: TextStyle(
                  color: Styles.backgroundColor,
                  fontWeight: FontWeight.w900,
                  fontSize: AppLayout.getHeight(context, 20),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
