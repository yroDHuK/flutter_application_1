import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/color_extension.dart';
import 'package:flutter_application_1/common_widget/round_button.dart';


import '../../common_widget/round_textfield.dart';

class NewPasswordView extends StatefulWidget {
  const NewPasswordView({super.key});

  @override
  State<NewPasswordView> createState() => _NewPasswordViewState();
}

class _NewPasswordViewState extends State<NewPasswordView>{
  
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

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
                "New Password",
                style: TextStyle(
                color: TColor.primary,
                fontSize: 30, 
                fontWeight: FontWeight.w800),
              ),

                const SizedBox(height: 15,),

              Text(
                "Please enter your new password",
                style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 14, 
                fontWeight: FontWeight.w500),
              ),
          
            const SizedBox(height: 60,),

            RoundTextfield(
              hintText: "New Password", 
              controller: txtPassword, 
              ),
            
            const SizedBox(height: 25,),

            RoundTextfield(
              hintText: "Confirm Password", 
              controller: txtPassword, 
              ),
            
            const SizedBox(height: 30,),
            
            RoundButton(title: "Next", onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => NewPasswordView(),),);
            }),

            
            ],
          ),
        ),
      ),
    );
  }
}