import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WRLanguageContent extends StatelessWidget {
  const WRLanguageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Language", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.white),),
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Container(
              height: 3.h,
              width: 35.w,
              color: Colors.white,
            ),
          ),
          Text(
            "English    100%\nSpanish    70%\nDutch      50%",
            style: TextStyle(fontSize: 10.sp, color: Colors.white),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
        ],
      ),
    );
  }
}