import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [

          Container(margin: EdgeInsets.all(80),
            height: 212,
          width: double.infinity,
            decoration: BoxDecoration(

              image: DecorationImage(
                image: AssetImage("assets/image/Group.png", ),fit: BoxFit.cover
              ),
            ),
          ),

          Text(
            "Sign in to your account",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
          60.verticalSpace,
          40.horizontalSpace,
          Text(
            "Email",
            style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w500),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Image(image: AssetImage("assets/image/yulduz.png"),),
          ),

          20.verticalSpace,

          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),),
              focusedBorder: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(),
              errorBorder: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
