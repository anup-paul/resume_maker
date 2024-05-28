import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf_generate/pages/dragon_ball_resume_ui_screen.dart';
import 'package:pdf_generate/pages/scooby_resune_ui_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WolfsRainScreen())
                );},
              child: const Text("Resume UI 101"),
            ),
            SizedBox(
              height: 10.h,
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ScoobyScreen())
                );},
              child: const Text("Resume UI 202"),
            ),
          ],
        ),
      ),
    );
  }
}
