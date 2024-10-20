import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/login/login_view.dart';
import 'package:flutter_application_1/view/login/sing_up_view.dart';

import '../../common/color_extension.dart';
import '../../common_widget/round_button.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {

    var media = MediaQuery.of(context).size;

    return Scaffold(

      body: Column(


        children: [
          Stack(
          alignment: Alignment.bottomCenter,
          children: [
              Image.asset(
          "assets/img/png_null.png", width: media.width,),

           Image.asset(
            "assets/img/app_logo.png",
           width: media.width * 0.7,
           height: media.height * 0.7,
           fit: BoxFit.contain,
           ),
          ],
          ),
          SizedBox(height: media.width * 0.1,),

          Text("Discover the best foods",
          textAlign: TextAlign.center,
            style: TextStyle(
              color: TColor.secondaryText,
              fontSize: 13,
              fontWeight: FontWeight.w500),
          ),

          SizedBox(height: media.width * 0.1,),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: RoundButton(title: "Login", onPressed: (){

              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const LoginView(),
              ),
              );
            },
            ),
          ),
          const SizedBox(
            height: 20,
            ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: RoundButton(title: "Create in Account",
            type: RoundButtonType.textPrimary,
            onPressed: (){
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const SingUpView(),
              ),
              );
            }),
          ),
        ],

      ),
    );
  }
}