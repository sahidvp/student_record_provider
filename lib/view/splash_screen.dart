import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_m_provider/controller/contrller.dart';
import 'home.dart';

class SplashScreen extends StatelessWidget {
   const SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    
    Timer(const Duration(seconds: 3), () async{
      await context.read<ScreenProvider>().getStudents();
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx){
        return const HomeScreen();
      }));
    });
    return  Scaffold(
      body: Center(
        child: Image.asset('image/sms.png'),
      ),
    );
  }
}