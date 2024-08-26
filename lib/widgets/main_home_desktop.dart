import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';

class MainHomeDesktop extends StatelessWidget {
  const MainHomeDesktop({
    super.key,
    required this.sizeHeight,
    required this.sizeWidth,
  });

  final double sizeHeight;
  final double sizeWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        // horizontal: 20,
        left: 20,
        right: 20,
      ),
      height: sizeHeight / 1.2,
      constraints: const BoxConstraints(
        minHeight: 670,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Hi,\nI'm Christopher Vasco\nA Flutter Developer",
                    style: TextStyle(
                      fontSize: 30,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.whitePrimary,
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: 250,
                    height: 45,
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
                ],
              ),
              Flexible(
                child: Image.asset(
                  'assets/flutter_avatar.png',
                  width: sizeWidth / 2,
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Flexible(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 650,
              ),
              child: const Text(
                "I am a developer with extensive experience in the Dart language and deep knowledge in the Flutter framework. Like these technologies, I keep myself constantly updated to be up to date with the latest developments. My adaptability, ability to learn quickly and responsibility in tasks, along with my enthusiasm for technology, make me the ideal candidate to work with you.",
                style: TextStyle(
                  color: CustomColors.whitePrimary,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
