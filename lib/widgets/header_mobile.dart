import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/styles/style.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({
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
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          _SiteLogo(
            onLogoTap: () {},
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: onMenuTap,
              icon: const Icon(Icons.menu_rounded),
            ),
          )
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
