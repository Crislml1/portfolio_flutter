import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';

class MainHome extends StatelessWidget {
  const MainHome({
    super.key,
    required this.sizeHeight,
    required this.sizeWidth,
  });

  final double sizeHeight;
  final double sizeWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          return Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            height: sizeHeight / 1.2,
            constraints: const BoxConstraints(
              minHeight: 350,
            ),
            child: Row(
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
                      width: 280,
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
                    )
                  ],
                ),
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/flutter_avatar.png',
                    width: sizeWidth / 2,
                  ),
                )
              ],
            ),
          );
        } else {
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
                )

                //* Button
              ],
            ),
          );
        }
      },
    );
  }
}
