import 'package:flutter/material.dart';
import 'package:pdf_generate/pages/dragon_ball_resume_ui_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: ElevatedButton(
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WolfsRainScreen())
              );},
            child: const Text("Resume UI"),
          ),
        ),
      ),
    );
  }
}
