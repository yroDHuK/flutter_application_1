import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/color_extension.dart';
import 'package:flutter_application_1/common_widget/round_button.dart';
import 'package:flutter_application_1/view/login/rest_password_view.dart';
import 'package:flutter_application_1/view/login/sing_up_view.dart';
import 'package:flutter_application_1/view/on_boarding/on_boarding_view.dart';

import '../../common_widget/round_textfield.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView>{
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 64,),
              Text(
                "login",
                style: TextStyle(
                color: TColor.primary,
                fontSize: 30, 
                fontWeight: FontWeight.w800),
              ),
                    
              Text(
                "Add your details to login",
                style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 14, 
                fontWeight: FontWeight.w500),
              ),
          
            const SizedBox(height: 25,),
            RoundTextfield(
              hintText: "Your Email", 
              controller: txtEmail, 
              keyboardType: TextInputType.emailAddress,
              ),
            const SizedBox(height: 25,),
            RoundTextfield(
              hintText: "Password", 
              controller: txtPassword, 
              obscureText: true,
              ),

            const SizedBox(height: 25,),
            
            RoundButton(title: "Login", onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const OnBoardingView(),),
      );
            }),

            const SizedBox(height: 4,),

            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPasswordView(),),);            
            }, child: Text(
                "Forgot your password",
                style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 14, 
                fontWeight: FontWeight.w500),
              ),
              ),

              const SizedBox(height: 30,),

              Text(
                "or login With",
                style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 14, 
                fontWeight: FontWeight.w500),
              ),


            const SizedBox(height: 30,),

            InkWell(
              onTap: (){},
              child: Container(
                height: 56,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xff367FC0) , 
                  borderRadius: BorderRadius.circular(28)
                ),
              child: Text(
                "Login with Facebook",
                style: TextStyle(color:  TColor.white, 
                fontSize: 12, 
                fontWeight: FontWeight.w500),
          ),
      ),
    ),

    const SizedBox(height: 25,),

            InkWell(
              onTap: (){},
              child: Container(
                height: 56,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xffDD4B39) , 
                  borderRadius: BorderRadius.circular(28)
                ),
              child: Text(
                "Login with Google",
                style: TextStyle(color:  TColor.white, 
                fontSize: 12, 
                fontWeight: FontWeight.w500),
          ),
      ),
    ),

    const SizedBox(height: 80,),

    TextButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const SingUpView(),),
      );
            }, child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    "Dont'n have Account? ",
                    style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 14, 
                    fontWeight: FontWeight.w500),
                  ),

                Text(
                    "Sign Up",
                    style: TextStyle(
                    color: TColor.primary,
                    fontSize: 14, 
                    fontWeight: FontWeight.w700),
                  ),
              ],
            ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}