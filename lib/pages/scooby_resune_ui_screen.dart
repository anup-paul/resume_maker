
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf_generate/pages/pdf_view/scooby_pdf_view.dart';

class ScoobyScreen extends StatelessWidget {
  const ScoobyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Scooby CV Template"),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              ///scooby contact content
              Row(
                children: [
                  SizedBox.fromSize(
                    size: Size.fromRadius(30.r), // Image radius
                    child: Image.asset(
                      fit: BoxFit.cover,
                      "assets/images/user.jpeg",
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Center(child: Text("MD. Sharif Ullah", style: TextStyle(fontSize:14.sp, fontWeight: FontWeight.bold),)),
                        const Center(child: Text(textAlign: TextAlign.center, "LinkedIn | +880131058975 | Medium | Sarif@gmail.com | gitHub", style: TextStyle(fontSize: 12),)),

                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height:15.h,),
              ///widget with line
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Skills", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: const Color(
                      0xff085bdc)),),
                  Expanded(
                    child: Container(
                      height: 0.5.h,
                      width: 300.w,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              ///skills
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: Container(
                          height: 5.h,
                          width: 5.w,
                          decoration: const BoxDecoration(
                              color:  Color(0xff085bdc),
                              shape: BoxShape.circle
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Expanded(child: Text("Flutter Framework | Dart | Flutter Animation| MobX | MVC | MVP  | BloC | GetX | Firebase | OOP", style: TextStyle(fontSize: 10.sp),))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: Container(
                          height: 5.h,
                          width: 5.w,
                          decoration: const BoxDecoration(
                              color:  Color(0xff085bdc),
                              shape: BoxShape.circle
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Expanded(child: Text("NoSQL | SQL | Git | Google Map | Mapbox | GPS | Open Street View | Responsive Design",style: TextStyle(fontSize: 10.sp),))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: Container(
                          height: 5.h,
                          width: 5.w,
                          decoration: const BoxDecoration(
                              color:  Color(0xff085bdc),
                              shape: BoxShape.circle
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Expanded(child: Text("Performance Optimization | RESTful API Integration | Play Store Console", style: TextStyle(fontSize: 10.sp),))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),

              ///Experience
              Column(
                children: [
                  ///widget with line
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Experience", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: const Color(
                          0xff085bdc)),),
                      Expanded(
                        child: Container(
                          height: 0.5.h,
                          width: 300.w,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Text("Junior Software Engineer", style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),)),
                      SizedBox(
                        width: 04.w,
                      ),
                      Expanded(child: Text("Bit Byte Technology Ltd", style: TextStyle(fontSize: 10.sp, color: Colors.blueAccent),), ),
                      SizedBox(
                        width: 04.w,
                      ),
                      Expanded(child: Text("Block, 1/1 North/South Rd,", style: TextStyle(fontSize: 10.sp, ),)),
                      SizedBox(
                        width: 04.w,
                      ),
                      Expanded(child: Text("05/2022 - Current", style: TextStyle(fontSize: 10.sp, ),))
                    ],
                  ),
                  SizedBox(height: 05.h,),
                  Text("During my tenure at Bit Byte Technology Ltd, I served as a software engineer and played a key role in developing and maintaining various mobile applications, including Monarch Mart (Multi-Vendor E-commerce), BDESH (OTA), Burgundy User & Driver, ", style: TextStyle(fontSize: 10.sp),),
                  SizedBox(
                    height: 08.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Text("Mobile Application Trainer", style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),)),
                      SizedBox(
                        width: 04.w,
                      ),
                      Expanded(child: Text("Bit Byte Technology Ltd", style: TextStyle(fontSize: 10.sp, color: Colors.blueAccent),), ),
                      SizedBox(
                        width: 04.w,
                      ),
                      Expanded(child: Text("Block, 1/1 North/South Rd,", style: TextStyle(fontSize: 10.sp, ),)),
                      SizedBox(
                        width: 04.w,
                      ),
                      Expanded(child: Text("05/2022 - Current", style: TextStyle(fontSize: 10.sp, ),))
                    ],
                  ),
                  SizedBox(height: 05.h,),
                  Text("During my tenure at Bit Byte Technology Ltd, I served as a software engineer and played a key role in developing and maintaining various mobile applications, including Monarch Mart (Multi-Vendor E-commerce), BDESH (OTA), Burgundy User & Driver, ", style: TextStyle(fontSize: 10.sp),),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              ///Projects
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Projects", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: const Color(
                          0xff085bdc)),),
                      Expanded(
                        child: Container(
                          height: 0.5.h,
                          width: 300.w,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: Container(
                          height: 5.h,
                          width: 5.w,
                          decoration: const BoxDecoration(
                              color:  Color(0xff085bdc),
                              shape: BoxShape.circle
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Expanded(child: Text("Monarch Mart (Multi-Vendor E-commerce Application)", style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold,  color: const Color(0xff085bdc),),))
                      ,SizedBox(
                        height: 8.h,
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text("Monarch Mart, a Multi-Vendor E-commerce Application like Daraz, was a project where I developed the entire mobile application using the Flutter framework. I was responsible for implementing key features to create a seamless shopping experience.", style: TextStyle(fontSize: 10.sp),)
                  ,SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: Container(
                          height: 5.h,
                          width: 5.w,
                          decoration: const BoxDecoration(
                              color:  Color(0xff085bdc),
                              shape: BoxShape.circle
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Expanded(child: Text("Monarch Mart (Multi-Vendor E-commerce Application)", style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold,  color: const Color(0xff085bdc),),))
                      ,SizedBox(
                        height: 8.h,
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text("Monarch Mart, a Multi-Vendor E-commerce Application like Daraz, was a project where I developed the entire mobile application using the Flutter framework. I was responsible for implementing key features to create a seamless shopping experience.", style: TextStyle(fontSize: 10.sp),)
                ],
              ),


              SizedBox(
                height: 15.h,
              ),

              ///Education
              Column(
                children: [
                  ///widget with line
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Education", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: const Color(
                          0xff085bdc)),),
                      Expanded(
                        child: Container(
                          height: 0.5.h,
                          width: 300.w,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Text("Bachelor of Science", style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),)),
                      SizedBox(
                        width: 04.w,
                      ),
                      Expanded(child: Text("University Of Scholars", style: TextStyle(fontSize: 10.sp, color: Colors.blueAccent),), ),
                      SizedBox(
                        width: 04.w,
                      ),
                      Expanded(child: Text("40 Kemal Ataturk Ave, Dhaka 1213", style: TextStyle(fontSize: 10.sp, ),)),
                      SizedBox(
                        width: 04.w,
                      ),
                      Expanded(child: Text("3.77 - 2020", style: TextStyle(fontSize: 10.sp, ),))
                    ],
                  ),
                  SizedBox(height: 05.h,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Text("Higher Secondary School Certificate.", style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),)),
                      SizedBox(
                        width: 04.w,
                      ),
                      Expanded(child: Text("Noakhali Government College", style: TextStyle(fontSize: 10.sp, color: Colors.blueAccent),), ),
                      SizedBox(
                        width: 04.w,
                      ),
                      Expanded(child: Text("New College Road, noakhali, Maijdee 3800", style: TextStyle(fontSize: 10.sp, ),)),
                      SizedBox(
                        width: 04.w,
                      ),
                      Expanded(child: Text("4.20 - 2015", style: TextStyle(fontSize: 10.sp, ),))
                    ],
                  ),
                  SizedBox(height: 05.h,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Text("Secondary School Certificate.", style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),)),
                      SizedBox(
                        width: 04.w,
                      ),
                      Expanded(child: Text("Tanjimul Ummah Alim Madrasah", style: TextStyle(fontSize: 10.sp, color: Colors.blueAccent),), ),
                      SizedBox(
                        width: 04.w,
                      ),
                      Expanded(child: Text("House 2/A Road-29, Dhaka 1230", style: TextStyle(fontSize: 10.sp, ),)),
                      SizedBox(
                        width: 04.w,
                      ),
                      Expanded(child: Text("5.0 - 2012", style: TextStyle(fontSize: 10.sp, ),))
                    ],
                  ),
                ],
              ),
              SizedBox(height:15.h,),

              ///Achievement
              Column(
                children: [
                  ///widget with line
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Programming Contest Perticpation", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: const Color(
                          0xff085bdc)),),
                      Expanded(
                        child: Container(
                          height: 0.5.h,
                          width: 300.w,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: Container(
                          height: 5.h,
                          width: 5.w,
                          decoration: const BoxDecoration(
                              color:  Color(0xff085bdc),
                              shape: BoxShape.circle
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Expanded(child: Text("Regional Programming Contest NCPC (2017)", style: TextStyle(fontSize: 10.sp),))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: Container(
                          height: 5.h,
                          width: 5.w,
                          decoration: const BoxDecoration(
                              color:  Color(0xff085bdc),
                              shape: BoxShape.circle
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Expanded(child: Text("Pabna University of Science and Technology Programming)",style: TextStyle(fontSize: 10.sp),))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5.h),
                        child: Container(
                          height: 5.h,
                          width: 5.w,
                          decoration: const BoxDecoration(
                              color:  Color(0xff085bdc),
                              shape: BoxShape.circle
                          ),
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Expanded(child: Text("Banglalion-Sub Inter University Programming Contest 2018)", style: TextStyle(fontSize: 10.sp),))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ScoobyPdfView())
          );
        },
        child: const Icon(
          Icons.picture_as_pdf,
          color: Colors.white,
        ),
      ),
    );
  }
}
