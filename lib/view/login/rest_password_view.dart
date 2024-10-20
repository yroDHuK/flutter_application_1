import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/color_extension.dart';
import 'package:flutter_application_1/common_widget/round_button.dart';


import '../../common_widget/round_textfield.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView>{
  TextEditingController txtEmail = TextEditingController();
  
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 64,),
              Text(
                "Reset Password",
                style: TextStyle(
                color: TColor.primary,
                fontSize: 30, 
                fontWeight: FontWeight.w800),
              ),

                const SizedBox(height: 15,),

              Text(
                "Please enter your email to receive a\nlink to create a new password via email",
                style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 14, 
                fontWeight: FontWeight.w500),
              ),
          
            const SizedBox(height: 60,),
            RoundTextfield(
              hintText: "Your Email", 
              controller: txtEmail, 
              keyboardType: TextInputType.emailAddress,
              ),
            
            const SizedBox(height: 25,),
            
            RoundButton(title: "Send", onPressed: (){}),

            
            ],
          ),
        ),
      ),
    );
  }
}