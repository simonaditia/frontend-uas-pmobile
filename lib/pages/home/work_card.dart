// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:simonaditia_uas_pmobile/pages/models/work_model.dart';
// import 'package:simonaditia_uas_pmobile/theme.dart';

// class WorkCard extends StatelessWidget {
//   // const WorkCard({ Key? key }) : super(key: key);

//   final WorkModel work;
//   WorkCard(this.work);

//   get context => null;

//   Future<void> showInformationDialog(BuildContext context) async {
//     final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//     return await showDialog(
//         context: context,
//         builder: (context) {
//           final TextEditingController _textEditingController =
//               TextEditingController();
//           bool isChecked = false;
//           return StatefulBuilder(builder: (context, setState) {
//             return AlertDialog(
//               content: Form(
//                   key: _formKey,
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     // crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           showEdit();
//                         },
//                         child: Container(
//                           margin: EdgeInsets.only(top: 10.0),
//                           child: Text(
//                             "Edit",
//                             style: GoogleFonts.poppins(
//                               fontSize: 18,
//                               color: Color(0xFF000000),
//                               fontWeight: regular,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                           margin: EdgeInsets.only(top: 10.0),
//                           child: Divider(color: Colors.black)),
//                       GestureDetector(
//                         onTap: () {},
//                         child: Container(
//                           margin: EdgeInsets.only(top: 10.0),
//                           child: Text(
//                             "Delete",
//                             style: GoogleFonts.poppins(
//                               fontSize: 18,
//                               color: Color(0xFFEA5147),
//                               fontWeight: regular,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   )),
//             );
//           });
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//         onTap: () async {
//           await showInformationDialog(context);
//           // createAlertDialog(context).then((onValue) {
//           //   SnackBar mySnackBar = SnackBar(context: Text("Hello $onValue"));
//           //   Scaffold.of(context).showSnackBar(mySnackBar);
//           // });
//         },
//         child: Container(
//           // margin: EdgeInsets.symmetric(horizontal: 20),
//           margin:
//               EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0, bottom: 0.0),
//           // height: 179,
//           decoration: BoxDecoration(
//             color: thirdColor,
//             borderRadius: BorderRadius.circular(10),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.3),
//                 spreadRadius: 1,
//                 blurRadius: 3,
//                 offset: Offset(0, 1),
//               ),
//             ],
//           ),
//           child: Container(
//             height: 97,
//             width: double.infinity,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(left: 25),
//                   child: Text(
//                     work.description,
//                     style: GoogleFonts.poppins(
//                       fontSize: 20,
//                       color: Color(0xFF3D3D3D),
//                       fontWeight: bold,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(left: 25, top: 5),
//                   child: Text(
//                     description,
//                     style: GoogleFonts.poppins(
//                       fontSize: 14,
//                       color: Color(0xFF6B686D),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//   }

//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController _textEditingController = TextEditingController();
//   void showEdit() {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             content: Form(
//                 key: _formKey,
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Edit Work",
//                       style: GoogleFonts.poppins(
//                         fontSize: 20,
//                         color: Color(0xFF3D3D3D),
//                         fontWeight: bold,
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(top: 20.0),
//                       child: Text(
//                         "Name",
//                         style: GoogleFonts.poppins(
//                           fontSize: 18,
//                           color: Color(0xFF6B686D),
//                           fontWeight: regular,
//                         ),
//                       ),
//                     ),
//                     TextFormField(
//                       controller: _textEditingController,
//                       validator: (value) {
//                         return value!.isNotEmpty ? null : "Invalid Field";
//                       },
//                       style: primaryTextStyle.copyWith(fontSize: 18),
//                       decoration: InputDecoration(
//                         hintText: "Job Name",
//                         hintStyle: primaryTextStyle.copyWith(fontSize: 18),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(top: 20.0),
//                       child: Text(
//                         "Description",
//                         style: GoogleFonts.poppins(
//                           fontSize: 18,
//                           color: Color(0xFF6B686D),
//                           fontWeight: regular,
//                         ),
//                       ),
//                     ),
//                     TextFormField(
//                       controller: _textEditingController,
//                       validator: (value) {
//                         return value!.isNotEmpty ? null : "Invalid Field";
//                       },
//                       style: primaryTextStyle.copyWith(fontSize: 18),
//                       decoration: InputDecoration(
//                         hintText: "Job Description",
//                         hintStyle: primaryTextStyle.copyWith(fontSize: 18),
//                       ),
//                     ),
//                     // Row(
//                     //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     //   children: [
//                     //     Text("Choice Box"),
//                     //     Checkbox(
//                     //         value: isChecked,
//                     //         onChanged: (checked) {
//                     //           setState(() {
//                     //             isChecked = checked!;
//                     //           });
//                     //         })
//                     //   ],
//                     // )
//                   ],
//                 )),
//             actions: <Widget>[
//               Container(
//                 height: 39,
//                 width: 106,
//                 margin: EdgeInsets.only(right: 20),
//                 child: TextButton(
//                   onPressed: () {
//                     // Navigator.pushNamed(context, '/home');
//                     if (_formKey.currentState!.validate()) {
//                       // Do something like updating SharedPreferences or User Settings etc.
//                       Navigator.of(context).pop();
//                     }
//                   },
//                   style: TextButton.styleFrom(
//                     backgroundColor: primaryColor,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   child: Text(
//                     'Save',
//                     style: thirdTextStyle.copyWith(
//                       fontSize: 16,
//                       fontWeight: medium,
//                     ),
//                   ),
//                 ),
//               ),
//               Container(height: 20),
//               // TextButton(
//               //   child: Text('Okay'),
//               //   onPressed: () {
//               //     if (_formKey.currentState!.validate()) {
//               //       // Do something like updating SharedPreferences or User Settings etc.
//               //       Navigator.of(context).pop();
//               //     }
//               //   },
//               // ),
//             ],
//           );
//         });
//   }
// }



















// backup work page
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
// import 'package:simonaditia_uas_pmobile/pages/home/work_card.dart';
// import 'package:simonaditia_uas_pmobile/pages/models/work_model.dart';
// import 'package:simonaditia_uas_pmobile/providers/work_provider.dart';
// import 'package:simonaditia_uas_pmobile/theme.dart';

// class WorkBodyPage extends StatefulWidget {
//   // const WorkBodyPage({Key? key}) : super(key: key);

//   @override
//   State<WorkBodyPage> createState() => _WorkBodyPageState();
// }

// class _WorkBodyPageState extends State<WorkBodyPage> {
  

//   @override
//   Widget build(BuildContext context) {
//     WorkProvider workProvider = Provider.of<WorkProvider>(context);
//     List<WorkModel> work = workProvider.works;

//     Size size = MediaQuery.of(context).size;

//     // final WorkModel work2;
//     // myWork(this.work2);

//     // Widget myWork() {
//     //   return GestureDetector(
//     //     onTap: () async {
//     //       await showInformationDialog(context);
//     //       // createAlertDialog(context).then((onValue) {
//     //       //   SnackBar mySnackBar = SnackBar(context: Text("Hello $onValue"));
//     //       //   Scaffold.of(context).showSnackBar(mySnackBar);
//     //       // });
//     //     },
//     //     child: Container(
//     //       // margin: EdgeInsets.symmetric(horizontal: 20),
//     //       margin:
//     //           EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0, bottom: 0.0),
//     //       // height: 179,
//     //       decoration: BoxDecoration(
//     //         color: thirdColor,
//     //         borderRadius: BorderRadius.circular(10),
//     //         boxShadow: [
//     //           BoxShadow(
//     //             color: Colors.grey.withOpacity(0.3),
//     //             spreadRadius: 1,
//     //             blurRadius: 3,
//     //             offset: Offset(0, 1),
//     //           ),
//     //         ],
//     //       ),
//     //       child: Container(
//     //         height: 97,
//     //         width: double.infinity,
//     //         child: Column(
//     //           mainAxisAlignment: MainAxisAlignment.center,
//     //           crossAxisAlignment: CrossAxisAlignment.start,
//     //           children: [
//     //             Container(
//     //               margin: EdgeInsets.only(left: 25),
//     //               child: Text(
//     //                 work2.name,
//     //                 style: GoogleFonts.poppins(
//     //                   fontSize: 20,
//     //                   color: Color(0xFF3D3D3D),
//     //                   fontWeight: bold,
//     //                 ),
//     //               ),
//     //             ),
//     //             Container(
//     //               margin: EdgeInsets.only(left: 25, top: 5),
//     //               child: Text(
//     //                 description,
//     //                 style: GoogleFonts.poppins(
//     //                   fontSize: 14,
//     //                   color: Color(0xFF6B686D),
//     //                 ),
//     //               ),
//     //             ),
//     //           ],
//     //         ),
//     //       ),
//     //     ),
//     //   );
//     // }

//     return Scaffold(
//       backgroundColor: thirdColor,
//       body: SingleChildScrollView(
//         child: Column(
//           children: workProvider.works
//               .map(
//                 (work) => WorkCard(work),
//               )
//               .toList(),
//           // children: [
//           //   // myWork("Developer Mobile", "Membuat antarmuka aplikasi mobile"),
//           //   // myWork("Multimedia", "Membuat design dan editing video"),
//           //   // myWork("Fullstack Web Developer", "Membangun aplikasi web"),
//           //   Container(
//           //     margin: EdgeInsets.only(top: 40),
//           //   )
//           // ],
//         ),
//       ),
//     );
//   }

//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   final TextEditingController _textEditingController = TextEditingController();

//   void showEdit() {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             content: Form(
//                 key: _formKey,
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Edit Work",
//                       style: GoogleFonts.poppins(
//                         fontSize: 20,
//                         color: Color(0xFF3D3D3D),
//                         fontWeight: bold,
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(top: 20.0),
//                       child: Text(
//                         "Name",
//                         style: GoogleFonts.poppins(
//                           fontSize: 18,
//                           color: Color(0xFF6B686D),
//                           fontWeight: regular,
//                         ),
//                       ),
//                     ),
//                     TextFormField(
//                       controller: _textEditingController,
//                       validator: (value) {
//                         return value!.isNotEmpty ? null : "Invalid Field";
//                       },
//                       style: primaryTextStyle.copyWith(fontSize: 18),
//                       decoration: InputDecoration(
//                         hintText: "Job Name",
//                         hintStyle: primaryTextStyle.copyWith(fontSize: 18),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(top: 20.0),
//                       child: Text(
//                         "Description",
//                         style: GoogleFonts.poppins(
//                           fontSize: 18,
//                           color: Color(0xFF6B686D),
//                           fontWeight: regular,
//                         ),
//                       ),
//                     ),
//                     TextFormField(
//                       controller: _textEditingController,
//                       validator: (value) {
//                         return value!.isNotEmpty ? null : "Invalid Field";
//                       },
//                       style: primaryTextStyle.copyWith(fontSize: 18),
//                       decoration: InputDecoration(
//                         hintText: "Job Description",
//                         hintStyle: primaryTextStyle.copyWith(fontSize: 18),
//                       ),
//                     ),
//                     // Row(
//                     //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     //   children: [
//                     //     Text("Choice Box"),
//                     //     Checkbox(
//                     //         value: isChecked,
//                     //         onChanged: (checked) {
//                     //           setState(() {
//                     //             isChecked = checked!;
//                     //           });
//                     //         })
//                     //   ],
//                     // )
//                   ],
//                 )),
//             actions: <Widget>[
//               Container(
//                 height: 39,
//                 width: 106,
//                 margin: EdgeInsets.only(right: 20),
//                 child: TextButton(
//                   onPressed: () {
//                     // Navigator.pushNamed(context, '/home');
//                     if (_formKey.currentState!.validate()) {
//                       // Do something like updating SharedPreferences or User Settings etc.
//                       Navigator.of(context).pop();
//                     }
//                   },
//                   style: TextButton.styleFrom(
//                     backgroundColor: primaryColor,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   child: Text(
//                     'Save',
//                     style: thirdTextStyle.copyWith(
//                       fontSize: 16,
//                       fontWeight: medium,
//                     ),
//                   ),
//                 ),
//               ),
//               Container(height: 20),
//               // TextButton(
//               //   child: Text('Okay'),
//               //   onPressed: () {
//               //     if (_formKey.currentState!.validate()) {
//               //       // Do something like updating SharedPreferences or User Settings etc.
//               //       Navigator.of(context).pop();
//               //     }
//               //   },
//               // ),
//             ],
//           );
//         });
//   }
// }
