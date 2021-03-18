import 'package:blue_beast/screens/common_screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:blue_beast/size_config.dart';
import './screens/auth/auth.dart';
import './screens/auth/otp.dart';
import 'screens/profiles/teacher_profile.dart';

// import './screens/auth/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => OrientationBuilder(
        builder: (context, orientation) {
          SizeConfig().init(constraints, orientation);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              textTheme: ThemeData.light().textTheme.copyWith(
                    headline6: TextStyle(
                      fontSize: 30,
                      backgroundColor: Colors.black,
                    ),
                  ),
            ),
            home: TeacherProfile(),
            routes: {
              '/otp-screen': (context) => OtpScreen(),
              '/dashboard': (context) => Dashboard(),
              '/teacher-profile': (context) => TeacherProfile()
            },
          );
        },
      ),
    );
  }
}
