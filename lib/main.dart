import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:work_flow_management_app/constance/project_colors.dart';

import 'screens/home_page_view.dart';
import 'constance/project_strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ProjectStrings().appName,
      theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: ProjectColors().appBarColor,
              unselectedItemColor: ProjectColors().unChosenIconColor,
              backgroundColor: ProjectColors().scafoldBackGroundColor),
          tabBarTheme: TabBarTheme(
            unselectedLabelStyle:
                TextStyle(color: ProjectColors().textColorGrey),
            indicator: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.white, width: 2))),
            unselectedLabelColor: ProjectColors().textColorGrey,
            labelColor: ProjectColors().textColorWhite,
          ),
          textTheme: TextTheme(
              titleLarge: TextStyle(color: ProjectColors().textColorWhite),
              bodyLarge: TextStyle(color: ProjectColors().textColorBlack)),
          appBarTheme: AppBarTheme(
            centerTitle: false,
            backgroundColor: ProjectColors().appBarColor,
          )),
      home: MyStatefulWidget(),
    );
  }
}
