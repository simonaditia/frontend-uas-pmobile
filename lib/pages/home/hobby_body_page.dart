import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simonaditia_uas_pmobile/pages/models/user_model.dart';
import 'package:simonaditia_uas_pmobile/providers/auth_provider.dart';
import 'package:simonaditia_uas_pmobile/theme.dart';

class HobbyBodyPage extends StatefulWidget {
  // const HobbyBodyPage({Key? key}) : super(key: key);

  @override
  State<HobbyBodyPage> createState() => _HobbyBodyPageState();
}

class _HobbyBodyPageState extends State<HobbyBodyPage> {
  Future<void> showInformationDialog(BuildContext context) async {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return await showDialog(
        context: context,
        builder: (context) {
          final TextEditingController _textEditingController =
              TextEditingController();
          bool isChecked = false;
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              content: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showEdit();
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Edit",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Color(0xFF000000),
                              fontWeight: regular,
                            ),
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 10.0),
                          child: Divider(color: Colors.black)),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Delete",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Color(0xFFEA5147),
                              fontWeight: regular,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            );
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    return Scaffold(
      backgroundColor: thirdColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () async {
                await showInformationDialog(context);
                // createAlertDialog(context).then((onValue) {
                //   SnackBar mySnackBar = SnackBar(context: Text("Hello $onValue"));
                //   Scaffold.of(context).showSnackBar(mySnackBar);
                // });
              },
              child: Container(
                height: 153,
                child: Stack(
                  children: [
                    Positioned(
                      child: Row(
                        children: [
                          GestureDetector(
                            // onTap: () {
                            //   Navigator.pushNamed(context, '/skill');
                            // },
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
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    hobby2a,
                                    hobby2b,
                                  ],
                                ),
                                // color: thirdColor,
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
                                      width: 48,
                                      margin: EdgeInsets.only(top: 0),
                                      child: Image.asset(
                                        'assets/icon_run.png',
                                      ),
                                      // CircleAvatar(
                                      //   backgroundImage: AssetImage(
                                      //     'assets/icon_design_coding.png',
                                      //   ),
                                      //   radius: 30,
                                      // ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 3),
                                      child: Text(
                                        'Lari',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            // onTap: () {
                            //   Navigator.pushNamed(context, '/skill');
                            // },
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
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    hobby1a,
                                    hobby1b,
                                  ],
                                ),
                                // color: thirdColor,
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
                                      width: 91,
                                      margin: EdgeInsets.only(top: 10),
                                      child: Image.asset(
                                        'assets/icon_design_coding.png',
                                      ),
                                      // CircleAvatar(
                                      //   backgroundImage: AssetImage(
                                      //     'assets/icon_design_coding.png',
                                      //   ),
                                      //   radius: 30,
                                      // ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 3),
                                      child: Text(
                                        'Ngoding & Design',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color(0xFFFFFFFF),
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
            ),
            GestureDetector(
              onTap: () async {
                await showInformationDialog(context);
                // createAlertDialog(context).then((onValue) {
                //   SnackBar mySnackBar = SnackBar(context: Text("Hello $onValue"));
                //   Scaffold.of(context).showSnackBar(mySnackBar);
                // });
              },
              child: Container(
                height: 153,
                child: Stack(
                  children: [
                    Positioned(
                      child: Row(
                        children: [
                          GestureDetector(
                            // onTap: () {
                            //   Navigator.pushNamed(context, '/skill');
                            // },
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
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    hobby3a,
                                    hobby3b,
                                  ],
                                ),
                                // color: thirdColor,
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
                                      width: 133,
                                      margin: EdgeInsets.only(top: 0),
                                      child: Image.asset(
                                        'assets/icon_bicycle2.png',
                                      ),
                                      // CircleAvatar(
                                      //   backgroundImage: AssetImage(
                                      //     'assets/icon_design_coding.png',
                                      //   ),
                                      //   radius: 30,
                                      // ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 3),
                                      child: Text(
                                        'Bersepeda',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            // onTap: () {
                            //   Navigator.pushNamed(context, '/skill');
                            // },
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
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    hobby4a,
                                    hobby4b,
                                  ],
                                ),
                                // color: thirdColor,
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
                                      width: 129,
                                      margin: EdgeInsets.only(top: 10),
                                      child: Image.asset(
                                        'assets/icon_film.png',
                                      ),
                                      // CircleAvatar(
                                      //   backgroundImage: AssetImage(
                                      //     'assets/icon_design_coding.png',
                                      //   ),
                                      //   radius: 30,
                                      // ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 3),
                                      child: Text(
                                        'Nonton Film',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color(0xFFFFFFFF),
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
            ),
            GestureDetector(
              onTap: () async {
                await showInformationDialog(context);
                // createAlertDialog(context).then((onValue) {
                //   SnackBar mySnackBar = SnackBar(context: Text("Hello $onValue"));
                //   Scaffold.of(context).showSnackBar(mySnackBar);
                // });
              },
              child: Container(
                height: 153,
                child: Stack(
                  children: [
                    Positioned(
                      child: Row(
                        children: [
                          GestureDetector(
                            // onTap: () {
                            //   Navigator.pushNamed(context, '/skill');
                            // },
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
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    hobby5a,
                                    hobby5b,
                                  ],
                                ),
                                // color: thirdColor,
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
                                      width: 83,
                                      margin: EdgeInsets.only(top: 10),
                                      child: Image.asset(
                                        'assets/icon_music.png',
                                      ),
                                      // CircleAvatar(
                                      //   backgroundImage: AssetImage(
                                      //     'assets/icon_design_coding.png',
                                      //   ),
                                      //   radius: 30,
                                      // ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 3),
                                      child: Text(
                                        'Dengar Musik',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            // onTap: () {
                            //   Navigator.pushNamed(context, '/skill');
                            // },
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
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    hobby6a,
                                    hobby6b,
                                  ],
                                ),
                                // color: thirdColor,
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
                                      width: 87,
                                      margin: EdgeInsets.only(top: 10),
                                      child: Image.asset(
                                        'assets/icon_game.png',
                                      ),
                                      // CircleAvatar(
                                      //   backgroundImage: AssetImage(
                                      //     'assets/icon_design_coding.png',
                                      //   ),
                                      //   radius: 30,
                                      // ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 3),
                                      child: Text(
                                        'Main Game',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          color: Color(0xFFFFFFFF),
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
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
            )
          ],
        ),
      ),
    );
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _textEditingController = TextEditingController();
  void showEdit() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Edit Hobby",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Color(0xFF3D3D3D),
                        fontWeight: bold,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Text(
                        "Name",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Color(0xFF6B686D),
                          fontWeight: regular,
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _textEditingController,
                      validator: (value) {
                        return value!.isNotEmpty ? null : "Invalid Field";
                      },
                      style: primaryTextStyle.copyWith(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: "Lari",
                        hintStyle: primaryTextStyle.copyWith(fontSize: 18),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Text(
                        "Image",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Color(0xFF6B686D),
                          fontWeight: regular,
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _textEditingController,
                      validator: (value) {
                        return value!.isNotEmpty ? null : "Invalid Field";
                      },
                      style: primaryTextStyle.copyWith(fontSize: 18),
                      decoration: InputDecoration(
                        hintText: "run.png",
                        hintStyle: primaryTextStyle.copyWith(fontSize: 18),
                      ),
                    ),
                    // Container(
                    //   margin: EdgeInsets.only(top: 20.0),
                    //   child: Text(
                    //     "Description",
                    //     style: GoogleFonts.poppins(
                    //       fontSize: 18,
                    //       color: Color(0xFF6B686D),
                    //       fontWeight: regular,
                    //     ),
                    //   ),
                    // ),
                    // TextFormField(
                    //   controller: _textEditingController,
                    //   validator: (value) {
                    //     return value!.isNotEmpty ? null : "Invalid Field";
                    //   },
                    //   style: primaryTextStyle.copyWith(fontSize: 18),
                    //   decoration: InputDecoration(
                    //     hintText: "Job Description",
                    //     hintStyle: primaryTextStyle.copyWith(fontSize: 18),
                    //   ),
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Text("Choice Box"),
                    //     Checkbox(
                    //         value: isChecked,
                    //         onChanged: (checked) {
                    //           setState(() {
                    //             isChecked = checked!;
                    //           });
                    //         })
                    //   ],
                    // )
                  ],
                )),
            actions: <Widget>[
              Container(
                height: 39,
                width: 106,
                margin: EdgeInsets.only(right: 20),
                child: TextButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, '/home');
                    if (_formKey.currentState!.validate()) {
                      // Do something like updating SharedPreferences or User Settings etc.
                      Navigator.of(context).pop();
                    }
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
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
              Container(height: 20),
              // TextButton(
              //   child: Text('Okay'),
              //   onPressed: () {
              //     if (_formKey.currentState!.validate()) {
              //       // Do something like updating SharedPreferences or User Settings etc.
              //       Navigator.of(context).pop();
              //     }
              //   },
              // ),
            ],
          );
        });
  }
}
