import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simonaditia_uas_pmobile/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/sign-in'),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Simon Aditia\nTF5A7\n201910225377\nUAS-P.Mobile',
          style: titleTextStyle.copyWith(
            fontSize: 36,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
