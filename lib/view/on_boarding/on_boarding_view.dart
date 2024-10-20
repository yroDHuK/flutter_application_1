import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/common/color_extension.dart';
import 'package:flutter_application_1/common_widget/round_button.dart';
import 'package:flutter_application_1/view/main_tabview/main_tabview.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {

  int selectPage=0;
  PageController controller= PageController();

  List pageArr = [
    {
    "title":"find food you love",
    "subtitle":"discover the best...",
    "image":"assets/img/service.png",
   },
   {
    "title":"fast deliveri",
    "subtitle":"subskr",
    "image":"assets/img/service.png",
   },
   {
    "title":"live tracking",
    "subtitle":"fjtfjhtfhjtfjfidty",
    "image":"assets/img/service.png",
   },
  ];

@override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller.addListener((){
      setState(() {
        selectPage = controller.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
        PageView.builder(
          controller: controller,
          itemCount: pageArr.length,
          itemBuilder: ((context, index){
            var pObj = pageArr[index] as Map? ?? {};
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min ,
            children: [
              Container(
                width: media.width,
                height: media.width,
                alignment: Alignment.center,
                child: Image.asset(
                  pObj["image"].toString(),
                  width: media.width * 0.65, 
                  fit: BoxFit.contain,
                  ),
              ),
              SizedBox(height: media.width * 0.2,),
              Text(
                pObj["title"].toString(),
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 28, 
                  fontWeight: FontWeight.w800),
              ),

              SizedBox(height: media.width * 0.07,),
              Text(
                pObj["subtitle"].toString(),
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 13, 
                  fontWeight: FontWeight.w500),
              ),

              SizedBox(height: media.width * 0.3,),
            ],
          );
        }
        ),
        )
      
      ,Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
        
  SizedBox(height: media.height * 0.6,),
        Row(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: pageArr.map((e){

            var index = pageArr.indexOf(e);

            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              height: 6,
              width: 6,
              decoration: BoxDecoration(color: index == selectPage ? TColor.primary :
              TColor.placeholder, borderRadius: BorderRadius.circular(4)),
            );
          }
          ).toList(),),

         SizedBox(height: media.height * 0.22,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: RoundButton(title: "Next", onPressed: (){
            if(selectPage >= 2){
           

            Navigator.push(context, MaterialPageRoute(builder: (context) => const MainTabView(),),);
            }else{
              setState(() {
                selectPage = selectPage + 1;
                controller.animateToPage(selectPage, duration: const Duration
                (milliseconds: 500), curve: Curves.bounceInOut);
              });
            }
          }),
        ),
      
      ],)
      
      ],
      ),
    );
  }
}