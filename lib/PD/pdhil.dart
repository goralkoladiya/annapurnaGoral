import 'package:annapurna225/components/TextBtnWidget.dart';
import 'package:annapurna225/components/constants.dart';
import 'package:annapurna225/components/dropdown_widget.dart';
import 'package:annapurna225/utils/strings.dart';
import 'package:annapurna225/widgets/ab_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class hil extends StatefulWidget {
  const hil({super.key});

  @override
  State<hil> createState() => _hilState();
}

class _hilState extends State<hil> {
  TextEditingController ApproveloanAmount=TextEditingController();
  String? product;
  List Product = [
    "CDL",
    "CDL1",
    "CDL2",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        actions: [
          Builder(builder: (context) =>
              Expanded(
                child: IconButton(
                  color: black,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: ImageIcon(AssetImage("assets/dasboardimg/Hamburger.png")),
                ),
              ),
          ),
          Expanded(flex: 2,
            child: Image.asset(
              "assets/dasboardimg/image 3.png",
              width: 90,
            ),
          ),
          SizedBox(width: 40),
          Expanded(
            child: IconButton(
                color: black,
                onPressed: () {},
                icon: ImageIcon(AssetImage("assets/dasboardimg/Group 148.png"))),
          ),
          Expanded(
            child: PopupMenuButton(
              icon: ImageIcon(
                AssetImage("assets/dasboardimg/Group 149.png"),
                color: Colors.black,
              ),
              onSelected: (value) {
                switch (value) {
                  case 1:
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePassword(),));
                    break;
                  case 2:
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Logout(),));
                    break;
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                    value: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Change Password",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 15,
                        )
                      ],
                    )),
                const PopupMenuItem(
                    value: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Logout",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 15,
                        )
                      ],
                    )),
              ],
              offset: Offset(0.0, AppBar().preferredSize.height + 5),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: PopupMenuButton(
              icon: ImageIcon(AssetImage("assets/dasboardimg/Group 150.png"),
                  color: Colors.black),
              onSelected: (value) {
                switch (value) {
                  case 1:
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: SizedBox(
                            height: 36.h,
                            width: 90.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Contact Us",
                                  style: myTextstye,
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: grey),
                                            borderRadius:
                                            BorderRadius.circular(10)),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                "assets/dasboardimg/call 1.png"),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Text(
                                              "Support No",
                                              style: myTextStyle600a.copyWith(
                                                  color: grey),
                                            ),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Text(
                                              "+91 8712459603",
                                              style: myTextStyle600a,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 1.h,
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: grey),
                                            borderRadius:
                                            BorderRadius.circular(10)),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                "assets/dasboardimg/mail.png"),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Text(
                                              "Email Address",
                                              style: myTextStyle600a.copyWith(
                                                  color: grey),
                                            ),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Text(
                                              "support@annapurna.com",
                                              style: myTextStyle600a,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                TextBtnWidget(
                                  name: "Close",
                                  btnColor: white,
                                  borderColor: kPrimaryColor,
                                  textColor: kPrimaryColor,
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                    break;
                  case 2:
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Logout(),));
                    break;
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                    value: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Contact Us",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 15,
                        )
                      ],
                    )),
                const PopupMenuItem(
                    value: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "FAQs",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 15,
                        )
                      ],
                    )),
                const PopupMenuItem(
                    value: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Videos",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 15,
                        )
                      ],
                    )),
              ],
              offset: Offset(0.0, AppBar().preferredSize.height + 5),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
              ),
            ),
          ),
          Expanded(flex: 2,
            child: Center(
              child: Text(
                "Vivek s.",
                style: myTextstye1.copyWith(fontSize: 14),
              ),
            ),
          ),
          Expanded(
            child: IconButton(
                color: black,
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 15,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Padding(
                  padding: EdgeInsets.only(top: 11.h),
                  child: ABTextInput(
                    controller: ApproveloanAmount,
                    autoValidator: AutovalidateMode.onUserInteraction,
                    titleText: Strings.approveloanamount,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter amount';
                      }return null;
                    },
                    hintText: "Enter amount",
                  ),
                ),),
                Expanded(
                  child: ABTextInput(
                  controller: ApproveloanAmount,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.PDDate,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter tenure';
                    }return null;
                  },
                  hintText: "DD MM YY",
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(child: Padding(
                  padding: EdgeInsets.only(top: 11.h),
                  child: ABTextInput(
                    controller: ApproveloanAmount,
                    autoValidator: AutovalidateMode.onUserInteraction,
                    titleText: Strings.PDScore,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter amount';
                      }return null;
                    },
                    hintText: "PD Score",
                  ),
                ),),
                Expanded(
                  child: ABTextInput(
                  controller: ApproveloanAmount,
                  autoValidator: AutovalidateMode.onUserInteraction,
                  titleText: Strings.FCOName,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter tenure';
                    }return null;
                  },
                  hintText: "Enter name",
                ),),
              ],
            ),
            Row(
              children: [
                Expanded(child: Padding(
                  padding: EdgeInsets.only(top: 11.h),
                  child: ABTextInput(
                    controller: ApproveloanAmount,
                    autoValidator: AutovalidateMode.onUserInteraction,
                    titleText: Strings.PDStatus,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter amount';
                      }return null;
                    },
                    hintText: "Enter Status",
                  ),
                ),),
               Expanded(child: SizedBox())
              ],
            ),
            Row(
              children: [
                Expanded(child: Padding(
                  padding: EdgeInsets.only(top: 11.h),
                  child: ABTextInput(
                    controller: ApproveloanAmount,
                    autoValidator: AutovalidateMode.onUserInteraction,
                    titleText: Strings.Remark,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter amount';
                      }return null;
                    },
                    hintText: "Enter Remark",
                  ),
                ),),

              ],
            ),
            Row(
              children: [
                Expanded(child: Padding(
                  padding: EdgeInsets.only(top: 11.h),
                  child: ABTextInput(
                    controller: ApproveloanAmount,
                    autoValidator: AutovalidateMode.onUserInteraction,
                    titleText: Strings.VerifiedBy,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter amount';
                      }return null;
                    },
                    hintText: "Verifier Name",
                  ),
                ),),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 11.h),
                    child: dropdown_widget(name: "Accommodation Type",value: product,data: Product,hint: "Select",
                      onChanged: (p0) {
                        product = p0;
                        setState(() {});
                      },),
                  ),
                ),

              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 11.h),
                    child: dropdown_widget(name: "Legal Documents of House",value: product,data: Product,hint: "Select",
                      onChanged: (p0) {
                        product = p0;
                        setState(() {});
                      },),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 11.h),
                    child: dropdown_widget(name: "Loaction of the House",value: product,data: Product,hint: "Select",
                      onChanged: (p0) {
                        product = p0;
                        setState(() {});
                      },),
                  ),
                ),

              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 11.h),
                    child: dropdown_widget(name: "Age of the Applicant",value: product,data: Product,hint: "Select",
                      onChanged: (p0) {
                        product = p0;
                        setState(() {});
                      },),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 11.h),
                    child: dropdown_widget(name: "Age of the Co-Applicant",value: product,data: Product,hint: "Select",
                      onChanged: (p0) {
                        product = p0;
                        setState(() {});
                      },),
                  ),
                ),

              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 11.h),
                    child: dropdown_widget(name: "Dependents",value: product,data: Product,hint: "Select",
                      onChanged: (p0) {
                        product = p0;
                        setState(() {});
                      },),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 11.h),
                    child: dropdown_widget(name: "Applicant's Saving",value: product,data: Product,hint: "Select",
                      onChanged: (p0) {
                        product = p0;
                        setState(() {});
                      },),
                  ),
                ),

              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 11.h),
                    child: dropdown_widget(name: "Credit history of Applicant",value: product,data: Product,hint: "Select",
                      onChanged: (p0) {
                        product = p0;
                        setState(() {});
                      },),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 11.h),
                    child: dropdown_widget(name: "Applicant's Contribution",value: product,data: Product,hint: "Select",
                      onChanged: (p0) {
                        product = p0;
                        setState(() {});
                      },),
                  ),
                ),

              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 11.h),
                    child: dropdown_widget(name: "Market Value of House",value: product,data: Product,hint: "Select",
                      onChanged: (p0) {
                        product = p0;
                        setState(() {});
                      },),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 11.h),
                    child: dropdown_widget(name: "Sanitation Unit",value: product,data: Product,hint: "Select",
                      onChanged: (p0) {
                        product = p0;
                        setState(() {});
                      },),
                  ),
                ),

              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 11.h),
                    child: dropdown_widget(name: "Monthly Household Income ",value: product,data: Product,hint: "Select",
                      onChanged: (p0) {
                        product = p0;
                        setState(() {});
                      },),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 11.h),
                    child: dropdown_widget(name: "Income Source of Household",value: product,data: Product,hint: "Select",
                      onChanged: (p0) {
                        product = p0;
                        setState(() {});
                      },),
                  ),
                ),

              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 11.h),
                    child: dropdown_widget(name: "Affordability of Applicant",value: product,data: Product,hint: "Select",
                      onChanged: (p0) {
                        product = p0;
                        setState(() {});
                      },),
                  ),
                ),


              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),
                    child: Container(
                      height: 40.h,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: kPrimaryColor
                          ),
                          onPressed: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (context) => GuarantorDetailsPage(),));
                          }, child: Text("Submit",)),
                    ),
                  ),
                ),
              ],
            )

            
          ],
        ),
      ),
    );
  }
}
