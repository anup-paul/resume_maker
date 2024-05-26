
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class WolfsRainImage extends StatelessWidget {
   WolfsRainImage({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: SizedBox.fromSize(
          size: Size.fromRadius(50.r), // Image radius
            child: Image.asset(
              fit: BoxFit.cover,
              "assets/images/user.jpeg",
            ),
        ),
      ),
    );
  }
}