import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simonaditia_uas_pmobile/providers/auth_provider.dart';
import 'package:simonaditia_uas_pmobile/theme.dart';

class SignUpPage extends StatelessWidget {
  // const SignUpPage({Key? key}) : super(key: key);

  TextEditingController fullnameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleSignUp() async {
      if (await authProvider.register(
        fullname: fullnameController.text,
        email: emailController.text,
        password: passwordController.text,
      )) {
        Navigator.pushNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: secondaryColor,
            content: Text(
              'Gagal Register',
              textAlign: TextAlign.center,
            )));
      }
    }

    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 46),
        child: Center(
          child: Text(
            'Sign Up',
            style: titleTextStyle.copyWith(
              fontSize: 48,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
    }

    Widget fullnameInput() {
      return Container(
        margin: EdgeInsets.only(top: 50),
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
                        controller: fullnameController,
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
        margin: EdgeInsets.only(top: 40),
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
                        controller: emailController,
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
        margin: EdgeInsets.only(top: 40),
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
                          controller: passwordController,
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

    Widget signUpButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 50),
        child: TextButton(
          onPressed: handleSignUp,
          // () {
          //   Navigator.pushNamed(context, '/home');
          // },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            'Sign Up',
            style: thirdTextStyle.copyWith(
              fontSize: 22,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    Widget signInButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: TextButton.styleFrom(
            backgroundColor: thirdColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: primaryColor, width: 2),
            ),
          ),
          child: Text(
            'Sign In',
            style: thirdTextStyle.copyWith(
              fontSize: 22,
              fontWeight: medium,
              color: primaryColor,
            ),
          ),
        ),
      );
    }

    return Scaffold(
        resizeToAvoidBottomInset: false, // Jaga-jaga
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                fullnameInput(),
                emailInput(),
                passwordInput(),
                signUpButton(),
                signInButton(),
              ],
            ),
          ),
        ));
  }
}
