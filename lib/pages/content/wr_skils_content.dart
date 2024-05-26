import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf_generate/pages/content/pointer_text.dart';

class WRSkillsContent extends StatelessWidget {
  const WRSkillsContent({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Skills", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.white),),
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Container(
              height: 3.h,
              width: 35.w,
              color: Colors.white,
            ),
          ),
          const PointerText(text: "Dart",color: Colors.white,),
          const PointerText(text: "Flutter",color: Colors.white),
          const PointerText(text: "Java",color: Colors.white),
          const PointerText(text: "C/C++",color: Colors.white),
          const PointerText(text: "Firebase",color: Colors.white),
          const PointerText(text: "Google Maps",color: Colors.white),
          const PointerText(text: "Problem Solving",color: Colors.white),
          const PointerText(text: "Team Work",color: Colors.white),
          const PointerText(text: "Adaptability",color: Colors.white),
          const PointerText(text: "Communication",color: Colors.white),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
        ],
      ),
    );
  }
}