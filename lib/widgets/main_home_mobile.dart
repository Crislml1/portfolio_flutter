import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';

class MainHomeMobile extends StatelessWidget {
  const MainHomeMobile({
    super.key,
    required this.sizeHeight,
    required this.sizeWidth,
  });

  final double sizeHeight;
  final double sizeWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeHeight,
      constraints: const BoxConstraints(
        minHeight: 560,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //* Avatar image
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [
                  CustomColors.scaffoldBg.withOpacity(0.6),
                  CustomColors.scaffoldBg.withOpacity(0.6),
                ],
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              'assets/flutter_avatar.png',
              width: sizeWidth,
            ),
          ),

          //* Intro text

          const Text(
            "Hi,\nI'm Christopher Vasco\nA Flutter Developer",
            style: TextStyle(
              fontSize: 24,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColors.whitePrimary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: 190,
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.resolveWith(
                  (states) => CustomColors.yellowButton,
                ),
              ),
              child: const Text(
                'Get in touch',
                style: TextStyle(
                  color: CustomColors.whitePrimary,
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: const Text(
              "I am a developer with extensive experience in the Dart language and deep knowledge in the Flutter framework. Like these technologies, I keep myself constantly updated to be up to date with the latest developments. My adaptability, ability to learn quickly and responsibility in tasks, along with my enthusiasm for technology, make me the ideal candidate to work with you.",
              style: TextStyle(
                color: CustomColors.whitePrimary,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
