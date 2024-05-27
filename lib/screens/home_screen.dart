import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
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
    final sizeWidth = screenSize.width;
    final sizeHeight = screenSize.height;

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: CustomColors.scaffoldBg,
      endDrawer: const CustomDrawer(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //* MAIN
          Header(
            onMenuTap: () {
              scaffoldKey.currentState?.openEndDrawer();
            },
          ),
          MainHome(
            sizeHeight: sizeHeight,
            sizeWidth: sizeWidth,
          ),
          //* SKILLS
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
            child: const Text('Empieza skills'),
          ),
          //* PROJECTS
          Container(
            height: 500,
            width: double.maxFinite,
            child: const Text('Empieza projects'),
          ),
          //* CONTACT
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
            child: const Text('Empieza el contact'),
          ),
          //* FOOTER
          Container(
            height: 500,
            width: double.maxFinite,
            child: const Text('Empieza el footer'),
          ),
        ],
      ),
    );
  }
}
