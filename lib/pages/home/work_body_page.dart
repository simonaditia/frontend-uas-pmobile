import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simonaditia_uas_pmobile/theme.dart';

class WorkBodyPage extends StatelessWidget {
  const WorkBodyPage({Key? key}) : super(key: key);

  Future<String> createAlertDialog(BuildContext context) {
    TextEditingController customController = TextEditingController();
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Your Name?"),
            content: TextField(
              controller: customController,
            ),
            actions: <Widget>[
              MaterialButton(
                elevation: 5.0,
                child: Text('Submit'),
                onPressed: () {
                  Navigator.of(context).pop(customController.text.toString());
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget myWork(String name, String description) {
      return GestureDetector(
        onTap: () {
          createAlertDialog(context);
        },
        child: Container(
          // margin: EdgeInsets.symmetric(horizontal: 20),
          margin:
              EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0, bottom: 0.0),
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
            height: 97,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Text(
                    name,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Color(0xFF3D3D3D),
                      fontWeight: bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, top: 5),
                  child: Text(
                    description,
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
      );
    }

    return Scaffold(
      backgroundColor: thirdColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            myWork("Developer Mobile", "Membuat antarmuka aplikasi mobile"),
            myWork("Multimedia", "Membuat design dan editing video"),
            myWork("Fullstack Web Developer", "Membangun aplikasi web"),
            Container(
              margin: EdgeInsets.only(top: 40),
            )
          ],
        ),
      ),
    );
  }
}
