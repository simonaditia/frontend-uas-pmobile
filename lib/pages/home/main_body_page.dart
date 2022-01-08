import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simonaditia_uas_pmobile/theme.dart';

class MainBodyPage extends StatelessWidget {
  const MainBodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: thirdColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 179,
              child: Stack(
                children: [
                  Container(
                    height: size.height * 0.2 - 15,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      // margin: EdgeInsets.symmetric(horizontal: 20),
                      margin: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 40.0, bottom: 0.0),
                      // height: 179,
                      decoration: BoxDecoration(
                        color: thirdColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/icon_s1.png',
                                ),
                                radius: 30,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              child: Text(
                                'Hello Gaiss',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  color: Color(0xFF3D3D3D),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              child: Text(
                                'Informatics Engineering Student',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Color(0xFF6B686D),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 153,
              child: Stack(
                children: [
                  Positioned(
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/work');
                          },
                          child: Container(
                            // margin: EdgeInsets.symmetric(horizontal: 20),
                            margin: EdgeInsets.only(
                                left: 20.0,
                                right: 10.0,
                                top: 20.0,
                                bottom: 0.0),
                            // height: 179,
                            width: 175,
                            decoration: BoxDecoration(
                              color: thirdColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/icon_full_work.png',
                                      ),
                                      radius: 30,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: Text(
                                      'Work',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize: 24,
                                        color: Color(0xFF3D3D3D),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/skill');
                          },
                          child: Container(
                            // margin: EdgeInsets.symmetric(horizontal: 20),
                            margin: EdgeInsets.only(
                                left: 10.0,
                                right: 20.0,
                                top: 20.0,
                                bottom: 0.0),
                            // height: 179,
                            width: 175,
                            decoration: BoxDecoration(
                              color: thirdColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/icon_full_skill.png',
                                      ),
                                      radius: 30,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: Text(
                                      'Skill',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize: 24,
                                        color: Color(0xFF3D3D3D),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 153,
              child: Stack(
                children: [
                  Positioned(
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/education');
                          },
                          child: Container(
                            // margin: EdgeInsets.symmetric(horizontal: 20),
                            margin: EdgeInsets.only(
                                left: 20.0,
                                right: 10.0,
                                top: 20.0,
                                bottom: 0.0),
                            // height: 179,
                            width: 175,
                            decoration: BoxDecoration(
                              color: thirdColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/icon_full_education.png',
                                      ),
                                      radius: 30,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: Text(
                                      'Education',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize: 24,
                                        color: Color(0xFF3D3D3D),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/hobby');
                          },
                          child: Container(
                            // margin: EdgeInsets.symmetric(horizontal: 20),
                            margin: EdgeInsets.only(
                                left: 10.0,
                                right: 20.0,
                                top: 20.0,
                                bottom: 0.0),
                            // height: 179,
                            width: 175,
                            decoration: BoxDecoration(
                              color: thirdColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/icon_full_bicycle.png',
                                      ),
                                      radius: 30,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: Text(
                                      'Hobby',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize: 24,
                                        color: Color(0xFF3D3D3D),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/favorite-food');
              },
              child: Container(
                height: 179,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        // margin: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 20.0, bottom: 0.0),
                        // height: 179,
                        decoration: BoxDecoration(
                          color: thirdColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 20, right: 20, top: 10, bottom: 0),
                                  child: Text(
                                    "Favorite Food",
                                    style: GoogleFonts.poppins(
                                        fontSize: 20, color: Color(0xFF3D3D3D)),
                                  ),
                                ),
                                // Container(
                                //   margin: EdgeInsets.only(top: 5),
                                //   child: Text(
                                //     "More",
                                //     style: GoogleFonts.poppins(
                                //         fontSize: 18, color: primaryColor),
                                //   ),
                                // ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 10.0,
                                  right: 10.0,
                                  top: 10.0,
                                  bottom: 0.0),
                              height: 100,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  MyFavoriteFood("assets/nas.jpg"),
                                  MyFavoriteFood("assets/ren.jpg"),
                                  MyFavoriteFood("assets/sot.jpg"),
                                  MyFavoriteFood("assets/gad.jpg"),
                                  MyFavoriteFood("assets/nas.jpg"),
                                  MyFavoriteFood("assets/ren.jpg"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
            )
            // Container(
            //   margin: EdgeInsets.only(
            //       left: 20.0, right: 20.0, top: 20.0, bottom: 0.0),
            //   height: 100,
            //   child: Container(
            //     margin: EdgeInsets.only(top: 10),
            //     child: ListView(
            //       scrollDirection: Axis.horizontal,
            //       children: [
            //         MyFavoriteFood("assets/nas.jpg"),
            //         MyFavoriteFood("assets/ren.jpg"),
            //         MyFavoriteFood("assets/sot.jpg"),
            //         MyFavoriteFood("assets/gad.jpg"),
            //         MyFavoriteFood("assets/gad.jpg"),
            //         MyFavoriteFood("assets/gad.jpg"),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  MyFavoriteFood(String imageVal) {
    return Container(
      width: 150,
      child: Card(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(imageVal),
        ),
      ),
    );
  }
}
