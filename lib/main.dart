import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:wepay/Participants/Participants.dart';
import 'package:wepay/Profile/mainProfile.dart';
import 'package:wepay/Profile/upgradeSeller.dart';


import 'package:wepay/auth/Log_in.dart';
import 'package:wepay/auth/Sign_up.dart';
import 'package:wepay/auth/bankInformation.dart';
import 'package:wepay/auth/checkCode.dart';

import 'Contact/Contact.dart';
import 'Participants/LastTranstion.dart';
import 'Participants/map.dart';
import 'auth/ForgetPassword.dart';

import 'deposit&withdraw/mainPage/MainPage.dart';
import 'deposit&withdraw/rechargeSalary/AlHaramDeposit.dart';
import 'model/Profile.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark
          .copyWith(statusBarColor: Color.fromARGB(0, 255, 255, 255)),
    );
    return ScreenUtilInit(
      designSize: const Size(285.73228346, 612.28346457),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          routes: {
            "Sign_Up": (context) => sign_Up(),
            "Log_In": (context) => Log_In(),
            "ForgetPass": (context) => InsertNewPasswordPage(),
            "checkCode": (context) => CheckCode(),
            "contact":(context)=>Contact(),
            "upgrade": (context) => UpgradeSeller(),
           
            "Profile": (context) => mainprofile(),
            "Participants": (context) => Participants(),
            "AlHaramDeposit": (context) => AlHaramDeposit(),
         
            
            "BankInf": (context) => BankInf(),
            "Map": (context) => MapPage(num: "2"),
          },
          title: 'Introduction screen',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Color.fromARGB(250, 58, 165, 117).asMaterialColor),
          home: Participants(),
        );
      },
    );
  }
}

extension ToMaterialColor on Color {
  MaterialColor get asMaterialColor {
    Map<int, Color> shades = [
      50,
      100,
      200,
      300,
      400,
      500,
      600,
      700,
      800,
      900
    ].asMap().map(
        (key, value) => MapEntry(value, withOpacity(1 - (1 - (key + 1) / 10))));

    return MaterialColor(value, shades);
  }
}
