
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf/widgets.dart' as pw;

class DesignationContent extends StatelessWidget {
   DesignationContent({
    super.key,
  });
  final pw.Document pdf = pw.Document();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Claudia Alves", style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),),
        Padding(
          padding: EdgeInsets.only(bottom: 4.h, top: 4.h),
          child: Container(
            height: 2.h,
            width: double.infinity,
            color: Colors.black,
          ),
        ),
        Text("Software Engineer", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),),
      ],
    );
  }
}