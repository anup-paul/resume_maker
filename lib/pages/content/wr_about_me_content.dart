
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WRAboutMeContent extends StatelessWidget {
  const WRAboutMeContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About Me", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Container(
              height: 3.h,
              width: 35.w,
              color: Colors.black,
            ),
          ),
          Text(
            textAlign: TextAlign.justify,
            "Lorem nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim a d minim veniam, quis nostrud exerci tation ullamcorper.",
            style: TextStyle(fontSize: 10.sp),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
        ],
      ),
    );
  }
}