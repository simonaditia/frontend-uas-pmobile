import 'package:flutter/material.dart';
import 'package:simonaditia_uas_pmobile/pages/home/main_body_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/navigation_drawer.dart';
import 'package:simonaditia_uas_pmobile/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  static final String title = "Dashboard";

  @override
  State<MainPage> createState() => _MainPageState();
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboardd123',
      theme: ThemeData(
        scaffoldBackgroundColor: thirdColor,
        primaryColor: primaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: thirdTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text(MainPage.title),
        backgroundColor: primaryColor,
        centerTitle: true,
        elevation: 0,
      ),
      body: MainBodyPage(),
    );
  }
}
