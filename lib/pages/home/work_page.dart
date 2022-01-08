import 'package:flutter/material.dart';
import 'package:simonaditia_uas_pmobile/pages/home/main_body_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/navigation_drawer.dart';
import 'package:simonaditia_uas_pmobile/pages/home/profile_body_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/work_body_page.dart';
import 'package:simonaditia_uas_pmobile/theme.dart';

class WorkPage extends StatefulWidget {
  const WorkPage({Key? key}) : super(key: key);
  static final String title = "Work";

  @override
  State<WorkPage> createState() => _WorkPageState();
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Work',
      theme: ThemeData(
        scaffoldBackgroundColor: thirdColor,
        primaryColor: primaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: thirdTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text(
          WorkPage.title,
          style: TextStyle(color: primaryColor),
        ),
        backgroundColor: thirdColor,
        centerTitle: true,
        iconTheme: IconThemeData(color: primaryColor),
      ),
      body: WorkBodyPage(),
    );
  }
}
