import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/constants/nav_items.dart';
import 'package:portfolio_flutter/styles/style.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({
    super.key,
    this.onMenuTap,
  });

  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      width: double.maxFinite,
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          _SiteLogo(
            onLogoTap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  navTitles[i],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.whitePrimary,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _SiteLogo extends StatelessWidget {
  const _SiteLogo({
    this.onLogoTap,
  });

  final VoidCallback? onLogoTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onLogoTap,
      child: const Text(
        'Cris | Software Dev',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          // decoration: TextDecoration.underline,
          color: CustomColors.yelloowSecondary,
        ),
      ),
    );
  }
}
