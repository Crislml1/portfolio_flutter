import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/constants/nav_items.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColors.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
                bottom: 20,
              ),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.close_rounded,
                ),
              ),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              titleTextStyle: const TextStyle(
                color: CustomColors.whitePrimary,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              leading: Icon(navIcons[i]),
              title: Text(navTitles[i]),
            )
        ],
      ),
    );
  }
}
