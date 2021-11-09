import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:untitled/home.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:untitled/swiper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(1080, 2340),
        builder: () => MaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              // initialRoute: "/",
              //       routes: <String, WidgetBuilder>{
              //         '/LoginView' : (BuildContext context) => LoginPage()
              //       },

              home: IntroScreen(),
            ));
  }
}

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => SwipePage()),
          (route) => false);
    });
    return Scaffold(
      backgroundColor: Color(0xFFfafade),
      body: Center(
        child:
            Container(width: 2000, child: Image.asset('assets/mainlogo.jpg')),
      ),
    );
  }
}
