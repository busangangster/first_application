import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
            Image.asset(
              "assets/show.jpg",
              width: ScreenUtil().setWidth(1080),
              //height: ScreenUtil().setHeight(2340),
            )
          ],
        )),
      ),
    ));
  }
}
