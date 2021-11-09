import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/home.dart';

class SwipePage extends StatefulWidget {
  const SwipePage({Key? key}) : super(key: key);

  @override
  _SwipePageState createState() => _SwipePageState();
}

class _SwipePageState extends State<SwipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF94b2a4),
      //94b2a4
      body: Column(children: <Widget>[
        new SizedBox(
          width: ScreenUtil().setWidth(1080),
          child: new Swiper.children(
            autoplay: false,
            loop: false,
            //control: new SwiperControl(),
            pagination: new SwiperPagination(
                margin: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
                builder: new DotSwiperPaginationBuilder(
                    color: Colors.white30,
                    activeColor: Colors.white,
                    size: 15.0,
                    activeSize: 10.0)),
            children: <Widget>[
              new Image.asset(
                "assets/discription1.jpg",
                fit: BoxFit.fitWidth,
                // width: 2000,
              ),
              new Image.asset(
                "assets/discription2.jpg",
                fit: BoxFit.fitWidth,
              ),
              new Image.asset("assets/discription3.jpg", fit: BoxFit.fitWidth),
            ],
          ),
          // height: ScreenUtil().setHeight(2100),
          // width: ScreenUtil().setWidth(1080),
          height: ScreenUtil().setHeight(2100),
        ),
        FlatButton(
          child: Text("누르면 홈으로 갑니다"),
          // style: ElevatedButton.styleFrom(
          //   primary: Color(0xFF000000), // background
          //   onPrimary: Colors.white, // foreground
          // ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => HomePage()));
          },
        ),
      ]),
    );
  }
}
