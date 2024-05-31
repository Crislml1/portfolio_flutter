import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/utils/responsive.dart';
import 'package:portfolio_flutter/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final sizeHeight = screenSize.height;
    final sizeWidth = screenSize.width;

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: CustomColors.scaffoldBg,
      endDrawer: const CustomDrawer(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //* HEADER
          const Responsive(
            desktop: HeaderDesktop(),
            mobile: HeaderMobile(),
          ),
          //* HEADER

          //* MAIN
          Responsive(
            desktop: MainHomeDesktop(
              sizeHeight: sizeHeight,
              sizeWidth: sizeWidth,
            ),
            mobile: MainHomeMobile(
              sizeHeight: sizeHeight,
              sizeWidth: sizeWidth,
            ),
          ),
          //* MAIN

          //* SKILLS
          Responsive(
            mobile: SkillsDesktop(
              sizeWidth: sizeHeight,
            ),
            desktop: SkillsMobile(
              sizeWidth: sizeWidth,
            ),
          ),
          //* SKILLS
        ],
      ),
    );
  }
}
