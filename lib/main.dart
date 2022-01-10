import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simonaditia_uas_pmobile/pages/home/edit_profile_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/education_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/favoritefood_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/hobby_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/main_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/profile_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/skill_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/work_page.dart';
import 'package:simonaditia_uas_pmobile/pages/sign_in_page.dart';
import 'package:simonaditia_uas_pmobile/pages/sign_up_page.dart';
import 'package:simonaditia_uas_pmobile/pages/splash_page.dart';
import 'package:simonaditia_uas_pmobile/providers/auth_provider.dart';
import 'package:simonaditia_uas_pmobile/providers/work_provider.dart';
import 'theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WorkProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/profile': (context) => ProfilePage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/work': (context) => WorkPage(),
          '/skill': (context) => SkillPage(),
          '/education': (context) => EducationPage(),
          '/hobby': (context) => HobbyPage(),
          '/favorite-food': (context) => FavoriteFoodPage(),
        },
        // home: SplashPage(),
      ),
    );
  }
}
