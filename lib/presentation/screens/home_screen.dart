import 'package:flutter/material.dart';
import 'package:portfolio_flutter/constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.scaffoldBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //* MAIN
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
            child: Text('Empieza el main'),
          ),
          //* SKILLS
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
            child: Text('Empieza skills'),
          ),
          //* PROJECTS
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
            child: Text('Empieza projects'),
          ),
          //* CONTACT
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
            child: Text('Empieza el contact'),
          ),
          //* FOOTER
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
            child: Text('Empieza el footer'),
          ),
        ],
      )
    );
  }
}
