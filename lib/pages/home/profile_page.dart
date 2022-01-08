import 'package:flutter/material.dart';
import 'package:simonaditia_uas_pmobile/pages/home/main_body_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/navigation_drawer.dart';
import 'package:simonaditia_uas_pmobile/pages/home/profile_body_page.dart';
import 'package:simonaditia_uas_pmobile/theme.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  static final String title = "Profile";

  @override
  State<ProfilePage> createState() => _ProfilePageState();
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(
        scaffoldBackgroundColor: thirdColor,
        primaryColor: primaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: thirdTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text(
          ProfilePage.title,
          style: TextStyle(color: primaryColor),
        ),
        backgroundColor: thirdColor,
        centerTitle: true,
        iconTheme: IconThemeData(color: primaryColor),
      ),
      body: ProfileBodyPage(),
    );
  }
}
