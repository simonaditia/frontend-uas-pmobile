import 'package:flutter/material.dart';
import 'package:simonaditia_uas_pmobile/pages/home/main_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/profile_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/skill_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/work_page.dart';
import 'package:simonaditia_uas_pmobile/theme.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.symmetric(horizontal: 20);
    return Drawer(
      child: Material(
        color: primaryColor,
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 48),
            buildMenuItem(
              text: 'Dashboard',
              icon: Icons.dashboard,
              onClicked: () => selectedItem(context, 0),
              // icon: ImageIcon(AssetImage('assets/icon_work.png'))
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Profile',
              icon: Icons.person,
              onClicked: () => selectedItem(context, 1),
              // icon: ImageIcon(AssetImage('assets/icon_work.png'))
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Work', icon: Icons.work,
              onClicked: () => selectedItem(context, 2),
              // icon: ImageIcon(AssetImage('assets/icon_work.png'))
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Skill', icon: Icons.star,
              onClicked: () => selectedItem(context, 3),
              // icon: ImageIcon(AssetImage('assets/icon_work.png'))
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Education', icon: Icons.school,
              // icon: ImageIcon(AssetImage('assets/icon_work.png'))
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Hobby', icon: Icons.directions_bike,
              // icon: ImageIcon(AssetImage('assets/icon_work.png'))
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Favorite Food', icon: Icons.fastfood,
              // icon: ImageIcon(AssetImage('assets/icon_work.png'))
            ),
            const SizedBox(height: 24),
            Divider(color: Colors.white70),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Logout', icon: Icons.logout,
              // icon: ImageIcon(AssetImage('assets/icon_work.png'))
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = thirdColor;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MainPage(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProfilePage(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => WorkPage(),
          ),
        );
        break;
      case 3:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SkillPage(),
          ),
        );
        break;
    }
  }
}
