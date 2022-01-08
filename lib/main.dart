import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simonaditia_uas_pmobile/pages/home/edit_profile_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/main_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/work_page.dart';
import 'package:simonaditia_uas_pmobile/pages/sign_in_page.dart';
import 'package:simonaditia_uas_pmobile/pages/sign_up_page.dart';
import 'package:simonaditia_uas_pmobile/pages/splash_page.dart';
import 'theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/edit-profile': (context) => EditProfilePage(),
        '/work': (context) => WorkPage(),
      },
      // home: SplashPage(),
    );
  }
}
