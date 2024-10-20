import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/on_boarding/startup_view.dart';


void main(){
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: "Trajan Pro",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
       // useMaterial3: true,
      ),
      home: const StartupView(),
    );
  }
}