import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PointerText extends StatelessWidget {
  const PointerText({
    super.key, this.text, this.color
  });
  final String? text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.circle, size: 4.sp, color: color ?? Colors.black ,),
        SizedBox(
          width: 5.w,
        ),
        Expanded(
          child: Text(
            textAlign: TextAlign.start,
            text ?? "",
            style: TextStyle(fontSize: 10.sp, color: color ?? Colors.black),
          ),
        ),
      ],
    );
  }
}
