import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:annapurna225/AppImages.dart';
import 'package:annapurna225/Dashboard/DashboardScreen.dart';
import 'package:annapurna225/Modals/User.dart';
import 'package:annapurna225/Screens/SplashScreen.dart';
import 'package:annapurna225/api_factory/api.dart';
import 'package:annapurna225/api_factory/api_end_points.dart';
import 'package:annapurna225/api_factory/prefs/pref_utils.dart';
import 'package:annapurna225/api_factory/user_model.dart';
import 'package:annapurna225/common_webview.dart';
import 'package:annapurna225/components/constants.dart';
import 'package:annapurna225/components/dialog.dart';
import 'package:annapurna225/forgot_password/forgotPasswordPage.dart';
import 'package:annapurna225/help/helpPage.dart';
import 'package:annapurna225/login/login_view.dart';
import 'package:annapurna225/reset_password/resetPassword.dart';
import 'package:annapurna225/utils/theme_config.dart';
import 'package:annapurna225/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../AppImages.dart';
import '../../Modals/NotificationModel.dart';
import '../../components/dialog.dart';

class AuthenticationViewModel extends ChangeNotifier {
  UserModel? _kCurrentUser;

  bool otpsend=false;
  int noofotpsend=30;
  UserModel? get kCurrentUser => _kCurrentUser;

  set kCurrentUser(UserModel? value) {
    _kCurrentUser = value;
    notifyListeners();
  }


  void onInit() async {
    kCurrentUser = await PrefUtils.getUser();
  }


  clearUser() {
    kCurrentUser = null;
    notifyListeners();
  }

  bool loginresult=true;
  bool resetloginresult=true;

  void loginAPI({
    required BuildContext context,
    required String userName,
    required String password,
  }) {
    var params = {
      "UserID": userName,
      "Password": password,
      "MACID":"451236786",
      "Version":"4.0",
      "Flag":"C"
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.login,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) async {
        print(response);
        if (response['status'] != false) {
          showSuccessSnackbar(response['message'], context);
          PrefUtils.setIsLoggedIn(true);
          PrefUtils.setUserid(userName);
          PrefUtils.setPassword(password);
          PrefUtils.setUserRole(response['UserRole']);
          // user=User.fromJson(response);
          String status=await PrefUtils.getUserRole() ?? 'FCO';
          print("status=$status");

          loginresult=true;
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => DashboardPage(),
              ));
          // userDetail(context: context, userName: userName);

        }else{
          loginresult=false;
          handleApiError(response['message'], context);
        }
        // if (response['status'] != false) {
        //   showSuccessSnackbar(response['message'], context);
        //   PrefUtils.setUserid(userName);
        //   userDetail(context: context, userName: userName);
        //   loginresult=true;
        // }else{
        //   loginresult=false;
        //   // handleApiError(response['message'], context);
        // }
        notifyListeners();

      },
    );
  }
  void sendotpAPI({
    required BuildContext context,
    required String userName,
    required String MobileNumber,

  }) {
    var params = {
      "UserID": userName,
      "MoblieNumber": MobileNumber,

    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.sendotp,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {

        // otpsend=true;
        // print(response);
        // if(noofotpsend>=1)
        // {
        //   noofotpsend=noofotpsend-1;
        // }
        if(response['RestPasswordOTPsendDetails'][0]['status']!="False")
        {
          myDialog(context, AppImages.done, "OTP Sent Successfully!","Okay", 200, 200,press:(){
            otpsend=true;
            print(response);
            if(noofotpsend>=1)
            {
              noofotpsend=noofotpsend-1;
            }
            Navigator.pop(context);
          });

        }
        else
        {
          otpsend=false;
        }
        notifyListeners();
      },
    );
  }
  void OTPVerificationAPI({
    required BuildContext context,
    required String userName,
    required String Phoneno,
    required String OTPNO,
  }) {
    var params = {
      "UserID": userName,
      "MoblieNumber": Phoneno,
      "OTPNO" : OTPNO,

    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.ForgotPasswordOTPVerificagtion,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {

        print(response);
        if(response['ForgotPasswordOTPVerificagtionData'][0]['status']!="False")
        {

          Navigator.push(context,
              MaterialPageRoute(
                builder: (context) {
                  return ResetPassword();
                },
              ));
        }
        else
        {
          myDialog(context,"assets/alert.png", "Incorrect Match!","Okay", 270, 200,press:(){
            Navigator.pop(context);
          });
          // Navigator.push(context,
          //           MaterialPageRoute(
          //             builder: (context) {
          //               return ResetPassword();
          //             },
          //           ));
        }
        // if (response['status'] != false) {
        //   showSuccessSnackbar(response['message'], context);
        //
        //   PrefUtils.setUserid(userName);
        //   PrefUtils.setMobileNumber(Phoneno);
        //   PrefUtils.setOTP(OTPNO);
        //
        //   PrefUtils.clearPrefs();
        //   // Navigator.pop(context);
        //   Navigator.pushReplacement(context,
        //       MaterialPageRoute(
        //         builder: (context) {
        //           return LoginView();
        //         },
        //       ));
        // }else{
        //
        //   handleApiError(response['message'], context);
        //
        // }

      },
    );
  }
  void changePasswordAPI({
    required BuildContext context,
    required String ConfirmPassword,
    required String NewPassword,
  }) {
    var params = {
      "UserID": kCurrentUser!.userid,
      "NewPassword": NewPassword,
      "ConfirmPassword" : ConfirmPassword,

    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.ForgotPasswordUpdate,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {

        print(response);
        if(response['ForgotPasswordUpdateDetails'][0]['status']!="False")
        {
          resetloginresult=true;
          showDialog(context: context, builder: (context) {
            return Dialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              elevation: 10,
              child: Container(
                height: 270,
                width: 150,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(AppImages.done,height: 70,width: 70,),
                    Padding(
                      padding: const EdgeInsets.only(left: defaultPadding,right: defaultPadding),
                      child: Text("Your Password has been updated successfully",textAlign: TextAlign.center,),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: defaultPadding,right: defaultPadding),
                            child: ElevatedButton(onPressed: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return LoginView();
                                    },
                                  ));
                            }, style:  ElevatedButton.styleFrom(
                              backgroundColor: ThemeColor.primary,
                              foregroundColor: Colors.white,
                              side: BorderSide(color: ThemeColor.primary),
                            ),child: Text("Back to login",)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },);
        }
        else
        {
          resetloginresult=false;
        }
        notifyListeners();
        // if (response['status'] != false) {
        //   showSuccessSnackbar(response['message'], context);
        //
        //   PrefUtils.setUserid(userName);
        //   PrefUtils.setMobileNumber(Phoneno);
        //   PrefUtils.setOTP(OTPNO);
        //
        //   PrefUtils.clearPrefs();
        //   // Navigator.pop(context);
        //   Navigator.pushReplacement(context,
        //       MaterialPageRoute(
        //         builder: (context) {
        //           return LoginView();
        //         },
        //       ));
        // }else{
        //
        //   handleApiError(response['message'], context);
        //
        // }

      },
    );
  }
  void userDetail({
    required BuildContext context,
    required String userName
  }) {
    var params = {
      "UserID": userName,
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.userDetail,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {

        print(response);
        if (response['status'] != "False") {
          var userModel = UserModel.fromJson(response);
          print(userModel);
          PrefUtils.setUser(jsonEncode(userModel));
          kCurrentUser=userModel;
          notifyListeners();
          //
          String userID = response['USERID'];
          String url = '';

          if (response['UserRole'] == 'STAFF') {
            url = 'http://maximoglobalsystems.com/landing/staff/$userID';
          } else if (response['UserRole'] == 'BM') {
            url = 'http://maximoglobalsystems.com/landing/bm/$userID';
          } else if (response['UserRole'] == 'ZM') {
            url = 'http://maximoglobalsystems.com/landing/zm/$userID';
          } else {
            url = 'http://maximoglobalsystems.com/landing/zm/$userID';
          }

          log('------------------------------$url       ${response['UserRole']}');
          PrefUtils.setIsLoggedIn(true);
          PrefUtils.setUrl(url);

          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => CommonWebView(url: url),
              ));

        } else {
          handleApiError(response['message'], context);
        }

        notifyListeners();

      },
    );
  }

  void FAQAPI({
    required BuildContext context,
    required String userName,
    required String UserRole,
  }) {
    var params = {
      "UserID": userName,
      "UserRole": UserRole,
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.FAQ,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {

        print(response);
        if (response['status'] != false) {

          print(response);
          showSuccessSnackbar(response['message'], context);

          // List list = response;
          // Navigator.pushReplacement(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => helpPage(),
          //     ));

        }else{

          handleApiError(response['message'], context);

        }

      },
    );
  }

  void contactAPI({
    required BuildContext context,
    required String userName,
    required String UserRole,

  }) {
    var params = {
      "UserID": userName,
      "UserRole": UserRole,
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.contact,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {

        print(response);
        if (response['status'] != false) {

          print(response);
          showSuccessSnackbar(response['message'], context);

          // Navigator.pushReplacement(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => helpPage(),
          //     ));

        }else{

          handleApiError(response['message'], context);

        }

      },
    );
  }

  NotificationModel? notificationModel;
  void notificationAPI({
    required BuildContext context,
    required String userName,
    required String UserRole,

  }) {
    var params = {
      "UserID": userName,
      "UserRole": UserRole,
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.notification,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {

        print(response);
        if (response['status'] != false) {
          notificationModel = NotificationModel.fromJson(response);
          notifyListeners();
          showSuccessSnackbar(response['message'], context);

        }else{

          handleApiError(response['message'], context);

        }

      },
    );
  }


  void logoutAPI({
    required BuildContext context,
    required String userName
  }) {
    var params = {
      "UserId": userName,
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.logout,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {
        print(response);

        if (response['status'] != false) {
          PrefUtils.setisLogout(true);
          PrefUtils.setUserid(userName);
          PrefUtils.clearPrefs();

          showSuccessSnackbar(response['message'], context);

          Navigator.pushReplacement(context,
              MaterialPageRoute(
                builder: (context) {
                  return LoginView();
                },
              ));
        }else{

          handleApiError(response['message'], context);

        }


      },
    );
  }



  void logout({
    required BuildContext context,
    required String userName
  }) {
    var params = {
      "UserId": userName,
    };
    Api.request(
      method: HttpMethod.post,
      path: ApiEndPoints.logout,
      params: params,
      isCustomResponse: true,
      context: context,
      onResponse: (response) {


      },
    );
  }


}
