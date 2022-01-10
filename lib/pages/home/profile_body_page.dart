import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simonaditia_uas_pmobile/pages/models/user_model.dart';
import 'package:simonaditia_uas_pmobile/providers/auth_provider.dart';
import 'package:simonaditia_uas_pmobile/theme.dart';

class ProfileBodyPage extends StatelessWidget {
  const ProfileBodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: thirdColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Container(
                // margin: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 30.0, bottom: 0.0),
                // height: 179,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/pict.jpg',
                          ),
                          radius: 50,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          '${user.fullname}',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Color(0xFF3D3D3D),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: Text(
                          '${user.status != null ? user.status : '-'}',
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
            Container(
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
              child: Container(
                  margin: EdgeInsets.only(
                      left: 20, right: 20, top: 0.0, bottom: 0.0),
                  height: 85,
                  child: Row(
                    children: [
                      Container(
                        width: 42,
                        // margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icon_email.png',
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 24),
                            child: Text(
                              'Email',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Color(0xFF3D3D3D),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 24),
                            child: Text(
                              '${user.email}',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color(0xFF6B686D),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            Container(
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
              child: Container(
                  margin: EdgeInsets.only(
                      left: 20, right: 20, top: 0.0, bottom: 0.0),
                  height: 85,
                  child: Row(
                    children: [
                      Container(
                        width: 42,
                        // margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icon_phone.png',
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 24),
                            child: Text(
                              'Phone',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Color(0xFF3D3D3D),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 24),
                            child: Text(
                              '${user.phone != null ? user.phone : '-'}',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color(0xFF6B686D),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            Container(
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
              child: Container(
                  margin: EdgeInsets.only(
                      left: 20, right: 20, top: 0.0, bottom: 0.0),
                  height: 85,
                  child: Row(
                    children: [
                      Container(
                        width: 36,
                        // margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/icon_address.png',
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Text(
                              'Address',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Color(0xFF3D3D3D),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Text(
                              '${user.address != null ? user.address : '-'}',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color(0xFF6B686D),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/edit-profile');
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Edit Profile',
                  style: thirdTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-in');
                },
                style: TextButton.styleFrom(
                  backgroundColor: secondaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Logout',
                  style: thirdTextStyle.copyWith(
                    fontSize: 22,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
            )
          ],
        ),
      ),
    );
  }
}
