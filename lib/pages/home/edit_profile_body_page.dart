import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simonaditia_uas_pmobile/theme.dart';

class EditProfileBodyPage extends StatelessWidget {
  const EditProfileBodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget fullnameInput() {
      return Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: secondaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: regular,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 35,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle.copyWith(fontSize: 20),
                        decoration: InputDecoration(
                          hintText: 'Your Full Name',
                          hintStyle: primaryTextStyle.copyWith(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: secondaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: regular,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 35,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle.copyWith(fontSize: 20),
                        decoration: InputDecoration(
                          hintText: 'Your Email Address',
                          hintStyle: primaryTextStyle.copyWith(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: secondaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: regular,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          style: primaryTextStyle.copyWith(fontSize: 20),
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Your Password',
                            hintStyle: primaryTextStyle.copyWith(fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      );
    }

    Widget statusInput() {
      return Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Status',
              style: secondaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: regular,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 35,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle.copyWith(fontSize: 20),
                        decoration: InputDecoration(
                          hintText: 'Your Status',
                          hintStyle: primaryTextStyle.copyWith(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget phoneInput() {
      return Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Phone',
              style: secondaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: regular,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 35,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle.copyWith(fontSize: 20),
                        decoration: InputDecoration(
                          hintText: 'Your Phone',
                          hintStyle: primaryTextStyle.copyWith(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget addressInput() {
      return Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Address',
              style: secondaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: regular,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 35,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle.copyWith(fontSize: 20),
                        decoration: InputDecoration(
                          hintText: 'Your Address',
                          hintStyle: primaryTextStyle.copyWith(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget Button() {
      return Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 44,
              width: 140,
              // margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/logout');
                },
                style: TextButton.styleFrom(
                  backgroundColor: secondaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Reset',
                  style: thirdTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
            Container(
              height: 44,
              width: 140,
              // margin: EdgeInsets.only(top: 50),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Save',
                  style: thirdTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

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
                            'assets/icon_s1.png',
                          ),
                          radius: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            fullnameInput(),
            emailInput(),
            passwordInput(),
            statusInput(),
            phoneInput(),
            addressInput(),
            Button(),
            Container(
              margin: EdgeInsets.only(top: 40),
            )
          ],
        ),
      ),
    );
  }
}
