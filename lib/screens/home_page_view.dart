import 'package:flutter/material.dart';
import 'package:work_flow_management_app/constance/project_colors.dart';
import 'package:work_flow_management_app/screens/airport_info.dart';
import 'package:work_flow_management_app/screens/my_plan_page_view.dart';
import '../constance/project_ints.dart';
import '../constance/project_strings.dart';
import 'arrival_page_view.dart';
import 'community_page_view.dart';
import 'departure_page_view.dart';
import 'otopark_page_view.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 1;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: ProjectInts().tabBarLenght, vsync: this);
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    AirPortInfoPageView(),
    MyStatefulWidget(),
    MyPlanPageView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              actions: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.add_alert_outlined))
              ],
              title: Text(
                ProjectStrings().appName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              pinned: true,
              floating: true,
              bottom: TabBar(
                controller: _tabController,
                tabs: [
                  Tab(
                    icon: Icon(Icons.people_outline),
                  ),
                  Tab(text: ProjectStrings().dailyArrivalPlan),
                  Tab(text: ProjectStrings().dailyDeparturePlan),
                  Tab(text: ProjectStrings().otoparkManagment),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            CommunityPageView(),
            ArrivalPageView(),
            DeparturePageView(),
            OtoparkPageView()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ProjectColors().textColorWhite,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: ProjectStrings().bottomItem0,
              icon: Icon(Icons.flight_takeoff)),
          BottomNavigationBarItem(
              label: ProjectStrings().bottomItom1,
              icon: Icon(Icons.storage_outlined)),
          BottomNavigationBarItem(
              label: ProjectStrings().bottomItem2,
              icon: Icon(Icons.work_history_outlined)),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ProjectColors().appBarColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
