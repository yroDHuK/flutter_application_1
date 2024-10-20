
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/login/welcom_view.dart';

class StartupView extends StatefulWidget {
  const StartupView({super.key});

  @override
  State<StartupView> createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> {
   @override
    void initState(){
      super.initState();
      goWelcomePage();
    }

    void goWelcomePage() async{
      await Future.delayed( const Duration(seconds: 3));
      welcomePage();
    }

 void welcomePage(){
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => const WelcomeView()));
 }
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

   

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/img/png_null.png",
           width: media.width,
           height: media.height,
           fit: BoxFit.cover,
           ),

           Image.asset(
            "assets/img/app_logo.png",
           width: media.width * 0.7,
           height: media.height * 0.7,
           fit: BoxFit.contain,
           ),
        ],


      ),
    );
  }
}