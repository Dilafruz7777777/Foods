import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/image/OnBoarding.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 700.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff09101D).withOpacity(0),
                      Color(0xff09101D),
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Text("Foode", style: TextStyle(color: Colors.white),),
                    4.verticalSpace,
                    Text("Foode", style: TextStyle(color: Colors.white),),
                    40.verticalSpace,

                    48.verticalSpace,
                  ],
                ),
          ))
        ],
      ),
    );
  }
}
