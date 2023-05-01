import 'package:flutter/material.dart';

import '../constance/project_paddings.dart';

class ToDoTile extends StatefulWidget {
  const ToDoTile({super.key});

  @override
  State<ToDoTile> createState() => _ToDoTileState();
}

class _ToDoTileState extends State<ToDoTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.red),
      margin: ProjectPaddings().tilePadding,
    );
  }
}
