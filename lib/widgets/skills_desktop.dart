import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({
    super.key,
    required this.sizeWidth,
  });

  final double sizeWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColors.bgLight1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'What I can do',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColors.whitePrimary,
            ),
          ),
          const SizedBox(height: 50),
          Column(
            children: [
              for (int i = 0; i < plataformsItems.length; i++)
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: CustomColors.bgLight2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    leading: plataformsItems[i]['img'],
                    title: Text(
                      plataformsItems[i]['title'],
                    ),
                  ),
                ),
              const SizedBox(height: 50),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                children: [
                  for (int i = 0; i < skillItems.length; i++)
                    Chip(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 16,
                      ),
                      backgroundColor: CustomColors.bgLight2,
                      label: Text(skillItems[i]['title']),
                      avatar: Image.asset(skillItems[i]['img']),
                    )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
