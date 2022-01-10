import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simonaditia_uas_pmobile/pages/home/education_body_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/favoritefood_body_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/main_body_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/navigation_drawer.dart';
import 'package:simonaditia_uas_pmobile/pages/home/profile_body_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/skill_body_page.dart';
import 'package:simonaditia_uas_pmobile/pages/home/work_body_page.dart';
import 'package:simonaditia_uas_pmobile/theme.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({Key? key}) : super(key: key);
  static final String title = "Education";

  @override
  State<EducationPage> createState() => _EducationPageState();
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Education',
      theme: ThemeData(
        scaffoldBackgroundColor: thirdColor,
        primaryColor: primaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: thirdTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text(
          EducationPage.title,
          style: TextStyle(color: primaryColor),
        ),
        backgroundColor: thirdColor,
        centerTitle: true,
        iconTheme: IconThemeData(color: primaryColor),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showButtons();
        },
      ),
      body: EducationBodyPage(),
    );
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _textEditingController = TextEditingController();
  void showButtons() {
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
                      "Add Education",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Color(0xFF3D3D3D),
                        fontWeight: bold,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Text(
                        "Level",
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
                        hintText: "SMA/SMK",
                        hintStyle: primaryTextStyle.copyWith(fontSize: 18),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Text(
                        "School Name",
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
                        hintText: "School",
                        hintStyle: primaryTextStyle.copyWith(fontSize: 18),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Text(
                        "Start Year",
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
                        hintText: "Year",
                        hintStyle: primaryTextStyle.copyWith(fontSize: 18),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: Text(
                        "End Year",
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
                        hintText: "Year",
                        hintStyle: primaryTextStyle.copyWith(fontSize: 18),
                      ),
                    ),

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
