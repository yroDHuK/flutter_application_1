import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/color_extension.dart';
import 'package:flutter_application_1/common_widget/round_button.dart';
import 'new_password_view.dart';

class OTPView extends StatefulWidget {
  const OTPView({super.key});

  @override
  State<OTPView> createState() => _OTPViewState();
}

class _OTPViewState extends State<OTPView>{
  TextEditingController txtEmail = TextEditingController();
  
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 64,),
              Text(
                "We have senr OTP to your Mobile",
                textAlign: TextAlign.center,
                style: TextStyle(
                color: TColor.primary,
                fontSize: 30, 
                fontWeight: FontWeight.w800),
              ),

                const SizedBox(height: 15,),

              Text(
                "Please check your mobile number 375****95 a\ncontinue to reset your password",
                style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 14, 
                fontWeight: FontWeight.w500),
              ),
          
            const SizedBox(height: 60,),
            
            const SizedBox(height: 30,),
            
            RoundButton(title: "Next", onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context) => NewPasswordView(),),);
              FocusScope.of(context).requestFocus(FocusNode());
            }),
            TextButton(onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context) => const SingUpView(),),);
            }, child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    "Didn't Received? ",
                    style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 14, 
                    fontWeight: FontWeight.w500),
                  ),

                Text(
                    "Clich Here",
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