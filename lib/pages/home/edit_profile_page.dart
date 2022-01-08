import 'package:flutter/material.dart';
import 'package:simonaditia_uas_pmobile/pages/home/edit_profile_body_page.dart';

import '../../theme.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: TextStyle(color: primaryColor),
        ),
        centerTitle: true,
        backgroundColor: thirdColor,
        iconTheme: IconThemeData(color: primaryColor),
      ),
      body: EditProfileBodyPage(),
    );
  }
}
