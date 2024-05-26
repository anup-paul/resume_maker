import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WRInterestsContent extends StatelessWidget {
  const WRInterestsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Interests", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold,color: Colors.white),),
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Container(
              height: 3.h,
              width: 35.w,
              color: Colors.white,
            ),
          ),
          Text(
            "Coding\nGaming\nFootball\nTravelling",
            style: TextStyle(fontSize: 10.sp, color: Colors.white),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
        ],
      ),
    );
  }
}