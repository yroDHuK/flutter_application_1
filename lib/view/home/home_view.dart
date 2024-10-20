import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/color_extension.dart';
import 'package:flutter_application_1/common_widget/round_textfield.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

TextEditingController txtSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20), 
          child: Column(
            children: [

              const SizedBox(height: 46),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Text("good morning Akila", style: TextStyle(color: TColor.primary, fontSize: 20, fontWeight: FontWeight.w800),),

                IconButton(onPressed: (){}, icon: Image.asset("assets/img/sm_bank.png", width: 25, height: 25,) ),
                ],),
              ),
              const SizedBox(height: 46),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text("Delivering to", style: TextStyle(color: TColor.secondaryText, fontSize: 11,),),

                const SizedBox(height: 6),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                Text("Current Location", style: TextStyle(color: TColor.secondaryText, fontSize: 16, fontWeight: FontWeight.w700),
                ),

                const SizedBox(width: 25,),

                Image.asset("assets/img/sm_bank.png", width: 12, height: 12,)

                ],
                )
                ],),
              ),
              const SizedBox(height: 46),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:RoundTextfield(hintText: "Search Food", controller: txtSearch, 
                left: Container(),)),

            ],
            ),
            ),
            ),
    );
  }
}