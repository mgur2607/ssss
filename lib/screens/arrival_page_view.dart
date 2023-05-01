import 'package:flutter/material.dart';
import 'package:work_flow_management_app/constance/project_colors.dart';

class ArrivalPageView extends StatefulWidget {
  const ArrivalPageView({super.key});

  @override
  State<ArrivalPageView> createState() => _ArrivalPageViewState();
}

class _ArrivalPageViewState extends State<ArrivalPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors().scafoldBackGroundColor,
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
