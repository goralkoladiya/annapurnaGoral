import 'package:annapurna225/components/constants.dart';
import 'package:annapurna225/components/dialog.dart';
import 'package:annapurna225/utils/theme_config.dart';
import 'package:annapurna225/widgets/ab_button.dart';
import 'package:annapurna225/widgets/ab_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/TextBtnWidget.dart';
import '../../../components/dropdown_widget.dart';
import '../../../utils/roundedimage.dart';

class existing extends StatefulWidget {
  const existing({Key? key}) : super(key: key);

  @override
  State<existing> createState() => _existingState();
}

class _existingState extends State<existing> {
  bool e1 = false;
  bool e2 = false;
  bool e3 = false;
  bool e4 = false;
  bool e5 = false;
  bool e6 = false;
  String? select;

  TextEditingController _poiController = TextEditingController();
  TextEditingController _poaController = TextEditingController();
  TextEditingController _kycno = TextEditingController();
  TextEditingController _Appliedamnt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            ListTile(
              title: Column(
                children: [
                  ExpansionTile(
                      onExpansionChanged: (value) {
                        e1 = !e1;
                        setState(() {});
                      },
                      trailing: e1
                          ? Icon(
                              Icons.expand_circle_down,
                              color: kPrimaryColor,
                            )
                          : Icon(
                              Icons.arrow_circle_up,
                              color: kPrimaryColor,
                            ),
                      backgroundColor: ThemeColor.expansioncolor,
                      children: [
                        Card(
                          elevation: 3,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Customer ID",
                                          style: myTextStyle600a.copyWith(
                                            color: grey,
                                          ),
                                        ),
                                        Text(
                                          "123",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          "Spouse",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "Lata Kumari",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),

                                        // Text(
                                        //   "Voter No.",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "12345678",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Applicant’s Name",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "Jai Prakash",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          "Father",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "Ranjit Kumar",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),

                                        // Text(
                                        //   "Address",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "Village/Locality - Dakarangia G. Pitown - Greesingia P.S. G.Udayagiri",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Gender",
                                          style: myTextStyle600a.copyWith(
                                            color: grey,
                                          ),
                                        ),
                                        Text(
                                          "Male",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          "DOB",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "05 April 1991",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),

                                        // Text(
                                        //   "Stage Status",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "Pending",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Voter No.",
                                            style: myTextStyle600a.copyWith(
                                              color: grey,
                                            ),
                                          ),
                                          Text(
                                            "12345678",
                                            style: myTextStyle500.copyWith(
                                                fontSize: 13),
                                          ),
                                          SizedBox(height: 10.h),

                                          // Text(
                                          //   "Voter No.",
                                          //   style:
                                          //       myTextStyle600a.copyWith(color: grey),
                                          // ),
                                          // Text(
                                          //   "12345678",
                                          //   style:
                                          //       myTextStyle500.copyWith(fontSize: 13),
                                          // ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Address",
                                            style: myTextStyle600a.copyWith(
                                                color: grey),
                                          ),
                                          Text(
                                            "Village/Locality - Dakarangia G. Pitown - Greesingia P.S. G.Udayagiri",
                                            style: myTextStyle500.copyWith(
                                                fontSize: 13),
                                          ),
                                          SizedBox(height: 10.h),

                                          // Text(
                                          //   "Address",
                                          //   style:
                                          //       myTextStyle600a.copyWith(color: grey),
                                          // ),
                                          // Text(
                                          //   "Village/Locality - Dakarangia G. Pitown - Greesingia P.S. G.Udayagiri",
                                          //   style:
                                          //       myTextStyle500.copyWith(fontSize: 13),
                                          // ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "",
                                          style: myTextStyle600a.copyWith(
                                            color: grey,
                                          ),
                                        ),
                                        Text(
                                          "",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),

                                        // Text(
                                        //   "Stage Status",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "Pending",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                      title: Text(
                        "Existing Data",
                        style: myTextstye,
                      )),
                  ExpansionTile(
                      onExpansionChanged: (value) {
                        e2 = !e2;
                        setState(() {});
                      },
                      trailing: e2
                          ? Icon(
                              Icons.expand_circle_down,
                              color: kPrimaryColor,
                            )
                          : Icon(
                              Icons.arrow_circle_up,
                              color: kPrimaryColor,
                            ),
                      backgroundColor: ThemeColor.expansioncolor,
                      children: [
                        Card(
                          elevation: 3,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Customer ID",
                                          style: myTextStyle600a.copyWith(
                                            color: grey,
                                          ),
                                        ),
                                        Text(
                                          "123",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          "Spouse",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "Lata Kumari",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),

                                        // Text(
                                        //   "Voter No.",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "12345678",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Applicant’s Name",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "Jai Prakash",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          "Father",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "Ranjit Kumar",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),

                                        // Text(
                                        //   "Address",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "Village/Locality - Dakarangia G. Pitown - Greesingia P.S. G.Udayagiri",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Gender",
                                          style: myTextStyle600a.copyWith(
                                            color: grey,
                                          ),
                                        ),
                                        Text(
                                          "Male",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          "DOB",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "05 April 1991",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),

                                        // Text(
                                        //   "Stage Status",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "Pending",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Voter No.",
                                            style: myTextStyle600a.copyWith(
                                              color: grey,
                                            ),
                                          ),
                                          Text(
                                            "12345678",
                                            style: myTextStyle500.copyWith(
                                                fontSize: 13),
                                          ),
                                          SizedBox(height: 10.h),

                                          // Text(
                                          //   "Voter No.",
                                          //   style:
                                          //       myTextStyle600a.copyWith(color: grey),
                                          // ),
                                          // Text(
                                          //   "12345678",
                                          //   style:
                                          //       myTextStyle500.copyWith(fontSize: 13),
                                          // ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Address",
                                            style: myTextStyle600a.copyWith(
                                                color: grey),
                                          ),
                                          Text(
                                            "Village/Locality - Dakarangia G. Pitown - Greesingia P.S. G.Udayagiri",
                                            style: myTextStyle500.copyWith(
                                                fontSize: 13),
                                          ),
                                          SizedBox(height: 10.h),

                                          // Text(
                                          //   "Address",
                                          //   style:
                                          //       myTextStyle600a.copyWith(color: grey),
                                          // ),
                                          // Text(
                                          //   "Village/Locality - Dakarangia G. Pitown - Greesingia P.S. G.Udayagiri",
                                          //   style:
                                          //       myTextStyle500.copyWith(fontSize: 13),
                                          // ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "",
                                          style: myTextStyle600a.copyWith(
                                            color: grey,
                                          ),
                                        ),
                                        Text(
                                          "",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),

                                        // Text(
                                        //   "Stage Status",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "Pending",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                      title: Text(
                        "Voter OCR Data",
                        style: myTextstye,
                      )),
                  ExpansionTile(
                      onExpansionChanged: (value) {
                        e3 = !e3;
                        setState(() {});
                      },
                      trailing: e3
                          ? Icon(
                              Icons.expand_circle_down,
                              color: kPrimaryColor,
                            )
                          : Icon(
                              Icons.arrow_circle_up,
                              color: kPrimaryColor,
                            ),
                      backgroundColor: ThemeColor.expansioncolor,
                      children: [
                        Card(
                          elevation: 3,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Customer ID",
                                          style: myTextStyle600a.copyWith(
                                            color: grey,
                                          ),
                                        ),
                                        Text(
                                          "123",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          "Spouse",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "Lata Kumari",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),

                                        // Text(
                                        //   "Voter No.",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "12345678",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Applicant’s Name",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "Jai Prakash",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          "Father",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "Ranjit Kumar",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),

                                        // Text(
                                        //   "Address",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "Village/Locality - Dakarangia G. Pitown - Greesingia P.S. G.Udayagiri",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Gender",
                                          style: myTextStyle600a.copyWith(
                                            color: grey,
                                          ),
                                        ),
                                        Text(
                                          "Male",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          "DOB",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "05 April 1991",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),

                                        // Text(
                                        //   "Stage Status",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "Pending",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Voter No.",
                                            style: myTextStyle600a.copyWith(
                                              color: grey,
                                            ),
                                          ),
                                          Text(
                                            "12345678",
                                            style: myTextStyle500.copyWith(
                                                fontSize: 13),
                                          ),
                                          SizedBox(height: 10.h),

                                          // Text(
                                          //   "Voter No.",
                                          //   style:
                                          //       myTextStyle600a.copyWith(color: grey),
                                          // ),
                                          // Text(
                                          //   "12345678",
                                          //   style:
                                          //       myTextStyle500.copyWith(fontSize: 13),
                                          // ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Address",
                                            style: myTextStyle600a.copyWith(
                                                color: grey),
                                          ),
                                          Text(
                                            "Village/Locality - Dakarangia G. Pitown - Greesingia P.S. G.Udayagiri",
                                            style: myTextStyle500.copyWith(
                                                fontSize: 13),
                                          ),
                                          SizedBox(height: 10.h),

                                          // Text(
                                          //   "Address",
                                          //   style:
                                          //       myTextStyle600a.copyWith(color: grey),
                                          // ),
                                          // Text(
                                          //   "Village/Locality - Dakarangia G. Pitown - Greesingia P.S. G.Udayagiri",
                                          //   style:
                                          //       myTextStyle500.copyWith(fontSize: 13),
                                          // ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "",
                                          style: myTextStyle600a.copyWith(
                                            color: grey,
                                          ),
                                        ),
                                        Text(
                                          "",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),

                                        // Text(
                                        //   "Stage Status",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "Pending",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                      title: Text(
                        "Voter Edited Data",
                        style: myTextstye,
                      )),
                  ExpansionTile(
                      onExpansionChanged: (value) {
                        e4 = !e4;
                        setState(() {});
                      },
                      trailing: e4
                          ? Icon(
                              Icons.expand_circle_down,
                              color: kPrimaryColor,
                            )
                          : Icon(
                              Icons.arrow_circle_up,
                              color: kPrimaryColor,
                            ),
                      backgroundColor: ThemeColor.expansioncolor,
                      children: [
                        Card(
                          elevation: 3,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Customer ID",
                                          style: myTextStyle600a.copyWith(
                                            color: grey,
                                          ),
                                        ),
                                        Text(
                                          "123",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          "Spouse",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "Lata Kumari",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),

                                        // Text(
                                        //   "Voter No.",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "12345678",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Applicant’s Name",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "Jai Prakash",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          "Father",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "Ranjit Kumar",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),

                                        // Text(
                                        //   "Address",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "Village/Locality - Dakarangia G. Pitown - Greesingia P.S. G.Udayagiri",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Gender",
                                          style: myTextStyle600a.copyWith(
                                            color: grey,
                                          ),
                                        ),
                                        Text(
                                          "Male",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          "DOB",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "05 April 1991",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),

                                        // Text(
                                        //   "Stage Status",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "Pending",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Voter No.",
                                            style: myTextStyle600a.copyWith(
                                              color: grey,
                                            ),
                                          ),
                                          Text(
                                            "12345678",
                                            style: myTextStyle500.copyWith(
                                                fontSize: 13),
                                          ),
                                          SizedBox(height: 10.h),

                                          // Text(
                                          //   "Voter No.",
                                          //   style:
                                          //       myTextStyle600a.copyWith(color: grey),
                                          // ),
                                          // Text(
                                          //   "12345678",
                                          //   style:
                                          //       myTextStyle500.copyWith(fontSize: 13),
                                          // ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Address",
                                            style: myTextStyle600a.copyWith(
                                                color: grey),
                                          ),
                                          Text(
                                            "Village/Locality - Dakarangia G. Pitown - Greesingia P.S. G.Udayagiri",
                                            style: myTextStyle500.copyWith(
                                                fontSize: 13),
                                          ),
                                          SizedBox(height: 10.h),

                                          // Text(
                                          //   "Address",
                                          //   style:
                                          //       myTextStyle600a.copyWith(color: grey),
                                          // ),
                                          // Text(
                                          //   "Village/Locality - Dakarangia G. Pitown - Greesingia P.S. G.Udayagiri",
                                          //   style:
                                          //       myTextStyle500.copyWith(fontSize: 13),
                                          // ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "",
                                          style: myTextStyle600a.copyWith(
                                            color: grey,
                                          ),
                                        ),
                                        Text(
                                          "",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),

                                        // Text(
                                        //   "Stage Status",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "Pending",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                      title: Text(
                        "Voter Verified Data",
                        style: myTextstye,
                      )),
                  ExpansionTile(
                      onExpansionChanged: (value) {
                        e5 = !e5;
                        setState(() {});
                      },
                      trailing: e5
                          ? Icon(
                              Icons.expand_circle_down,
                              color: kPrimaryColor,
                            )
                          : Icon(
                              Icons.arrow_circle_up,
                              color: kPrimaryColor,
                            ),
                      backgroundColor: ThemeColor.expansioncolor,
                      children: [
                        Card(
                          elevation: 3,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Customer ID",
                                          style: myTextStyle600a.copyWith(
                                            color: grey,
                                          ),
                                        ),
                                        Text(
                                          "123",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          "Spouse",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "Lata Kumari",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),

                                        // Text(
                                        //   "Voter No.",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "12345678",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Applicant’s Name",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "Jai Prakash",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          "Father",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "Ranjit Kumar",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),

                                        // Text(
                                        //   "Address",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "Village/Locality - Dakarangia G. Pitown - Greesingia P.S. G.Udayagiri",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Gender",
                                          style: myTextStyle600a.copyWith(
                                            color: grey,
                                          ),
                                        ),
                                        Text(
                                          "Male",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          "DOB",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "05 April 1991",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),

                                        // Text(
                                        //   "Stage Status",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "Pending",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Voter No.",
                                            style: myTextStyle600a.copyWith(
                                              color: grey,
                                            ),
                                          ),
                                          Text(
                                            "12345678",
                                            style: myTextStyle500.copyWith(
                                                fontSize: 13),
                                          ),
                                          SizedBox(height: 10.h),

                                          // Text(
                                          //   "Voter No.",
                                          //   style:
                                          //       myTextStyle600a.copyWith(color: grey),
                                          // ),
                                          // Text(
                                          //   "12345678",
                                          //   style:
                                          //       myTextStyle500.copyWith(fontSize: 13),
                                          // ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Address",
                                            style: myTextStyle600a.copyWith(
                                                color: grey),
                                          ),
                                          Text(
                                            "Village/Locality - Dakarangia G. Pitown - Greesingia P.S. G.Udayagiri",
                                            style: myTextStyle500.copyWith(
                                                fontSize: 13),
                                          ),
                                          SizedBox(height: 10.h),

                                          // Text(
                                          //   "Address",
                                          //   style:
                                          //       myTextStyle600a.copyWith(color: grey),
                                          // ),
                                          // Text(
                                          //   "Village/Locality - Dakarangia G. Pitown - Greesingia P.S. G.Udayagiri",
                                          //   style:
                                          //       myTextStyle500.copyWith(fontSize: 13),
                                          // ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "",
                                          style: myTextStyle600a.copyWith(
                                            color: grey,
                                          ),
                                        ),
                                        Text(
                                          "",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),

                                        // Text(
                                        //   "Stage Status",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "Pending",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                      title: Text(
                        "Aadhar OCR Data",
                        style: myTextstye,
                      )),
                  ExpansionTile(
                      onExpansionChanged: (value) {
                        e6 = !e6;
                        setState(() {});
                      },
                      trailing: e6
                          ? Icon(
                              Icons.expand_circle_down,
                              color: kPrimaryColor,
                            )
                          : Icon(
                              Icons.arrow_circle_up,
                              color: kPrimaryColor,
                            ),
                      backgroundColor: ThemeColor.expansioncolor,
                      children: [
                        Card(
                          elevation: 3,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Customer ID",
                                          style: myTextStyle600a.copyWith(
                                            color: grey,
                                          ),
                                        ),
                                        Text(
                                          "123",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          "Spouse",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "Lata Kumari",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),

                                        // Text(
                                        //   "Voter No.",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "12345678",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Applicant’s Name",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "Jai Prakash",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          "Father",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "Ranjit Kumar",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),

                                        // Text(
                                        //   "Address",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "Village/Locality - Dakarangia G. Pitown - Greesingia P.S. G.Udayagiri",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Gender",
                                          style: myTextStyle600a.copyWith(
                                            color: grey,
                                          ),
                                        ),
                                        Text(
                                          "Male",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          "DOB",
                                          style: myTextStyle600a.copyWith(
                                              color: grey),
                                        ),
                                        Text(
                                          "05 April 1991",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),

                                        // Text(
                                        //   "Stage Status",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "Pending",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Voter No.",
                                            style: myTextStyle600a.copyWith(
                                              color: grey,
                                            ),
                                          ),
                                          Text(
                                            "12345678",
                                            style: myTextStyle500.copyWith(
                                                fontSize: 13),
                                          ),
                                          SizedBox(height: 10.h),

                                          // Text(
                                          //   "Voter No.",
                                          //   style:
                                          //       myTextStyle600a.copyWith(color: grey),
                                          // ),
                                          // Text(
                                          //   "12345678",
                                          //   style:
                                          //       myTextStyle500.copyWith(fontSize: 13),
                                          // ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Address",
                                            style: myTextStyle600a.copyWith(
                                                color: grey),
                                          ),
                                          Text(
                                            "Village/Locality - Dakarangia G. Pitown - Greesingia P.S. G.Udayagiri",
                                            style: myTextStyle500.copyWith(
                                                fontSize: 13),
                                          ),
                                          SizedBox(height: 10.h),

                                          // Text(
                                          //   "Address",
                                          //   style:
                                          //       myTextStyle600a.copyWith(color: grey),
                                          // ),
                                          // Text(
                                          //   "Village/Locality - Dakarangia G. Pitown - Greesingia P.S. G.Udayagiri",
                                          //   style:
                                          //       myTextStyle500.copyWith(fontSize: 13),
                                          // ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "",
                                          style: myTextStyle600a.copyWith(
                                            color: grey,
                                          ),
                                        ),
                                        Text(
                                          "",
                                          style: myTextStyle500.copyWith(
                                              fontSize: 13),
                                        ),
                                        SizedBox(height: 10.h),

                                        // Text(
                                        //   "Stage Status",
                                        //   style:
                                        //       myTextStyle600a.copyWith(color: grey),
                                        // ),
                                        // Text(
                                        //   "Pending",
                                        //   style:
                                        //       myTextStyle500.copyWith(fontSize: 13),
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                      title: Text(
                        "Aadhar Edited Data",
                        style: myTextstye,
                      ))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: dropdown_widget(
                    name: "POI Type",
                    onChanged: (p0) {},
                    value: select,
                    data: ["name", "number", "age"],
                    hint: "Select",
                  ),
                ),
                Expanded(
                  child: ABTextInput(
                    titleText: 'POI No',
                    validator: (value) {
                      // if (value == null || value.isEmpty || value.length <= 9 ) {
                      //   return 'Enter Valid Password';
                      // }
                      // return null;
                    },
                    controller: _poiController,
                    hintText: '0',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: dropdown_widget(
                    name: "POA Type",
                    onChanged: (p0) {},
                    value: select,
                    data: ["name", "number", "age"],
                    hint: "Select",
                  ),
                ),
                Expanded(
                  child: ABTextInput(
                    titleText: 'POA No',
                    validator: (value) {
                      // if (value == null || value.isEmpty || value.length <= 9 ) {
                      //   return 'Enter Valid Password';
                      // }
                      // return null;
                    },
                    controller: _poaController,
                    hintText: '0',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: dropdown_widget(
                    name: "Alternate KYC Type",
                    onChanged: (p0) {},
                    value: select,
                    data: ["name", "number", "age"],
                    hint: "Voter ID",
                  ),
                ),
                Expanded(
                  child: ABTextInput(
                    titleText: 'Alternate KYC No',
                    validator: (value) {
                      // if (value == null || value.isEmpty || value.length <= 9 ) {
                      //   return 'Enter Valid Password';
                      // }
                      // return null;
                    },
                    controller: _kycno,
                    hintText: '4561623',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: dropdown_widget(
                    name: "Inquiry Purpose",
                    onChanged: (p0) {},
                    value: select,
                    data: ["name", "number", "age"],
                    hint: "Select",
                  ),
                ),
                Expanded(
                  child: ABTextInput(
                    titleText: 'Applied Amount',
                    validator: (value) {
                      // if (value == null || value.isEmpty || value.length <= 9 ) {
                      //   return 'Enter Valid Password';
                      // }
                      // return null;
                    },
                    controller: _Appliedamnt,
                    hintText: '0',
                  ),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(2),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          spreadRadius: 1,
                          blurRadius: 20)
                    ]),
                width: double.infinity,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Present Address",
                        style: myTextStylegrey.copyWith(fontSize: 12)),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "Village/Locality - Dakarangia G. Pitown - Greesingia P.S G.Udayagiri",
                      style:
                          myTextStyle600a.copyWith(fontWeight: FontWeight.bold),
                    )
                  ],
                )),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Images Data",
              style: myTextStyle700,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Click on the thumbnail for full images preview",
              style: myTextStyle600,
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                myRoundedImage('assets/adhaar/image 50.png', context),
                myRoundedImage("assets/adhaar/image 50.png", context),
                myRoundedImage("assets/adhaar/image 50.png", context),
                myRoundedImage("assets/adhaar/image 51.png", context),
                myRoundedImage("assets/adhaar/image 51.png", context),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: ABButton(
                  paddingTop: MediaQuery.of(context).size.height * 0.0225,
                  paddingBottom: 15.0,
                  paddingLeft: 15,
                  btnColor: Colors.white,
                  paddingRight: 15,
                  textColor: kPrimaryColor,
                  text: 'VID Verification',
                  onPressed: () {},
                )),
                Expanded(
                  child: ABButton(
                    paddingTop: MediaQuery.of(context).size.height * 0.0225,
                    paddingBottom: 15.0,
                    paddingLeft: 15,
                    paddingRight: 15,
                    text: 'Proceed',
                    onPressed: () {
                      myDiloag2(
                          context,
                          "assets/alert.png",
                          "KYC ID 4567890 already exist for Borrower ID 341",
                          "Raise Request", () {
                        myDiloag4(
                            context,
                            "Please Enter Reason of Raising Request",
                            "Add Remarks",
                            "Submit", () {
                          myDiloag2(context, "assets/dailog2.png",
                              "Voter Verification Failed", "Retry", () {
                            myDiloag2(context, "assets/dailog.png",
                                "No record Found", "Retry", () {
                              myDiloag(context, "assets/add person.png",
                                  "message", "ok", () {});
                            }, "Cancel", () {});
                          }, "Cancel", () {});
                        }, "Cancel", () {});
                      }, "Okay", () {});
                    },
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
