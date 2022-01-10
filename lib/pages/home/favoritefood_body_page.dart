import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simonaditia_uas_pmobile/theme.dart';

class FavoriteFoodBodyPage extends StatefulWidget {
  // const FavoriteFoodBodyPage({Key? key}) : super(key: key);

  @override
  State<FavoriteFoodBodyPage> createState() => _FavoriteFoodBodyPageState();
}

class _FavoriteFoodBodyPageState extends State<FavoriteFoodBodyPage> {
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

    Widget favoriteFood(String assets, String name) {
      return GestureDetector(
        onTap: () async {
          await showInformationDialog(context);
          // createAlertDialog(context).then((onValue) {
          //   SnackBar mySnackBar = SnackBar(context: Text("Hello $onValue"));
          //   Scaffold.of(context).showSnackBar(mySnackBar);
          // });
        },
        child: Container(
          // margin: EdgeInsets.symmetric(horizontal: 20),
          margin:
              EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 0.0),
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
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  assets,
                  // height: 165,
                  width: double.infinity,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 210, left: 15),
                child: Text(
                  name,
                  style: GoogleFonts.poppins(
                      color: thirdColor, fontSize: 24, fontWeight: bold),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: thirdColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            favoriteFood("assets/nas.jpg", "Nasi Goreng"),
            favoriteFood("assets/sot.jpg", "Soto"),
            favoriteFood("assets/ren.jpg", "Rendang"),
            favoriteFood("assets/gad.jpg", "Gado-gado"),
            // favoriteFood("Figma"),
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
                      "Edit Favorite Food",
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
                        hintText: "Nasi Goreng",
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
                        hintText: "nasigoreng.jpg",
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
