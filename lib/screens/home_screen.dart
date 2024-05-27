import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';
import 'package:portfolio_flutter/constants/skill_items.dart';
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
            width: sizeWidth,
            padding: const EdgeInsets.only(bottom: 60, left: 25),
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
                                title: Text(plataformsItems[i]['title']),
                              ),
                            ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
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
