
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WREducationContent extends StatelessWidget {
  const WREducationContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Education", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Container(
              height: 3.h,
              width: 35.w,
              color: Colors.black,
            ),
          ),

          Row(
            children: [
              Expanded(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  "Mastero f Web Design",
                  style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  " (2021 - 2022)",
                  style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          Text(
            textAlign: TextAlign.justify,
            "Lorem ipsum,consec tetuer adipi scing elit nonummy.",
            style: TextStyle(fontSize: 10.sp),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.010,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  "Mastero f Web Design",
                  style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  " (2021 - 2022)",
                  style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          Text(
            textAlign: TextAlign.justify,
            "Lorem ipsum,consec tetuer adipi scing elit nonummy.",
            style: TextStyle(fontSize: 10.sp),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.010,
          ),
        ],
      ),
    );
  }
}