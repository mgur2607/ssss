import 'package:flutter/material.dart';
import 'package:work_flow_management_app/constance/project_colors.dart';

class MyPlanPageView extends StatefulWidget {
  const MyPlanPageView({super.key});

  @override
  State<MyPlanPageView> createState() => _MyPlanPageViewState();
}

class _MyPlanPageViewState extends State<MyPlanPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors().scafoldBackGroundColor,
    );
  }
}
