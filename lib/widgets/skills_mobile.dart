import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 450,
                ),
                child: Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: [
                    for (int i = 0; i < plataformsItems.length; i++)
                      Container(
                        width: 220,
                        decoration: BoxDecoration(
                          color: CustomColors.bgLight2,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          leading: plataformsItems[i]['img'],
                          title: Text(
                            plataformsItems[i]['title'],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(width: 50),
              Flexible(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 500),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
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
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
