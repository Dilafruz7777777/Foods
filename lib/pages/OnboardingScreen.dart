import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foods/pages/Sign_In.dart';

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
                    ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Foode",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    30.verticalSpace,
                    Text(
                      "The best food ordering and delivery app of the century",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    55.verticalSpace,
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return SignIn();
                        }));
                      },
                      child: Container(
                        height: 55.h,
                        width: 380.w,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.bottomRight,


                                colors: [
                              Color(0xffFF7E95).withOpacity(1),
                              Color(0xffFE385C).withOpacity(1),
                            ]),
                          borderRadius: BorderRadius.all(Radius.circular(32),),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.cloud_download, color: Colors.white,),
                            24.horizontalSpace,
                            Text("Next", style: TextStyle(color: Colors.white),),
                            10.horizontalSpace,
                            Icon(Icons.arrow_forward, color: Colors.white,),

                          ],
                        ),


                      ),
                    ),
                    35.verticalSpace,

                  ],
                ),
              ))
        ],
      ),
    );
  }
}
