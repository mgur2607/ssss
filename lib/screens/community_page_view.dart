import 'package:flutter/material.dart';
import 'package:work_flow_management_app/constance/project_colors.dart';

class CommunityPageView extends StatefulWidget {
  const CommunityPageView({super.key});

  @override
  State<CommunityPageView> createState() => _CommunityPageViewState();
}

class _CommunityPageViewState extends State<CommunityPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors().scafoldBackGroundColor,
      body: Container(
        color: Colors.amber,
      ),
    );
  }
}
