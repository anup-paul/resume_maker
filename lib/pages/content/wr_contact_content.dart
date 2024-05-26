import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WRContactContent extends StatelessWidget {
  const WRContactContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Contact", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.white),),
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Container(
              height: 3.h,
              width: 35.w,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              Icon(Icons.email_outlined, color: Colors.white, size: 10.sp,),
              SizedBox(width: 3.w,),
              Expanded(child: Text(
                overflow: TextOverflow.ellipsis,
                "claudia@gmail.com", style: TextStyle(fontSize: 10.sp, color: Colors.white),))
            ],
          ),
          Row(
            children: [
              Icon(Icons.home, color: Colors.white, size: 10.sp,),
              SizedBox(width: 3.w,),
              Expanded(child: Text(
                overflow: TextOverflow.ellipsis,
                "Dhaka, Bangladesh", style: TextStyle(fontSize: 10.sp,color: Colors.white),))
            ],
          ),
          Row(
            children: [
              Icon(Icons.phone, color: Colors.white, size: 10.sp,),
              SizedBox(width: 3.w,),
              Expanded(child: Text(
                overflow: TextOverflow.ellipsis,
                "+88018787654", style: TextStyle(fontSize: 10.sp, color: Colors.white),))
            ],
          ),
          Row(
            children: [
              Icon(Icons.corporate_fare, color: Colors.white, size: 10.sp,),
              SizedBox(width: 3.w,),
              Expanded(child: Text(
                overflow: TextOverflow.ellipsis,
                "Claudia/linked.com", style: TextStyle(fontSize: 10.sp, color: Colors.white),))
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
        ],
      ),
    );
  }
}