
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WRExperienceContent extends StatelessWidget {
  const WRExperienceContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Experience", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),),
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
            "Software Engineer",
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  "Borcelle Agency",
                  style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  " (2022 - Present)",
                  style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          Text(
            textAlign: TextAlign.justify,
            "Lorem ipsumdf dolodr sidt adfmet, consectetuer adipiscing elit, sed diam nonummy tation ullamcorper.",
            style: TextStyle(fontSize: 10.sp),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.010,
          ),
          Text(
            textAlign: TextAlign.justify,
            "JR Software Engineer",
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  "Borcelle Agency",
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
            "Lorem ipsumdf dolodr sidt adfmet, consectetuer adipiscing elit, sed diam nonummy tation ullamcorper.",
            style: TextStyle(fontSize: 10.sp),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.010,
          ),
          Text(
            textAlign: TextAlign.justify,
            "Web Developer",
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  "Borcelle Agency",
                  style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  " (2019 - 2021)",
                  style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          Text(
            textAlign: TextAlign.justify,
            "Lorem ipsumdf dolodr sidt adfmet, consectetuer adipiscing elit, sed diam nonummy tation ullamcorper.",
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