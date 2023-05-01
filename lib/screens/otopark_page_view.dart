import 'package:flutter/material.dart';
import 'package:work_flow_management_app/constance/project_colors.dart';
import 'package:work_flow_management_app/constance/project_strings.dart';

import '../companents/todo_tile.dart';

class OtoparkPageView extends StatefulWidget {
  const OtoparkPageView({super.key});

  @override
  State<OtoparkPageView> createState() => _OtoparkPageViewState();
}

class _OtoparkPageViewState extends State<OtoparkPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors().scafoldBackGroundColor,
      body: ListView.builder(itemBuilder: ((context, index) {})),
    );
  }
}
