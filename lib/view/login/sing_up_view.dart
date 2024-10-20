import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/color_extension.dart';
import 'package:flutter_application_1/common_widget/round_button.dart';
import 'package:flutter_application_1/view/login/login_view.dart';
import 'package:flutter_application_1/view/login/otp_view.dart';

import '../../common_widget/round_textfield.dart';

class SingUpView extends StatefulWidget {
  const SingUpView({super.key});

  @override
  State<SingUpView> createState() => _SingUpView();
}

class _SingUpView extends State<SingUpView>{
  TextEditingController txtName = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtAdress = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

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
                "Sign Up",
                style: TextStyle(
                color: TColor.primary,
                fontSize: 30, 
                fontWeight: FontWeight.w800),
              ),
                    
              Text(
                "Add your details to sign up",
                style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 14, 
                fontWeight: FontWeight.w500),
              ),
            const SizedBox(height: 25,),
            RoundTextfield(
              hintText: "Name", 
              controller: txtName, 
              ),         
            const SizedBox(height: 25,),
            RoundTextfield(
              hintText: "Email", 
              controller: txtEmail, 
              keyboardType: TextInputType.emailAddress,
              ),
            const SizedBox(height: 25,),
            RoundTextfield(
              hintText: "Mobile No", 
              controller: txtMobile, 
              keyboardType: TextInputType.phone,
              ),         
            const SizedBox(height: 25,),
            RoundTextfield(
              hintText: "Address", 
              controller: txtAdress, 
              ),         
            const SizedBox(height: 25,),
            RoundTextfield(
              hintText: "Password", 
              controller: txtPassword, 
              obscureText: true,
              ),
              const SizedBox(height: 25,),
            RoundTextfield(
              hintText: "Confirm Password", 
              controller: txtConfirmPassword, 
              obscureText: true,
              ),

            const SizedBox(height: 25,),
            
            RoundButton(title: "Sign Up", onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const OTPView(),),);
            }),
           
            const SizedBox(height: 30,),

        TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView(),),);
            }, child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    "Already have Account? ",
                    style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 14, 
                    fontWeight: FontWeight.w500),
                  ),

                Text(
                    "Login",
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