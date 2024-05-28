import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;


class ScoobyPdfView extends StatefulWidget {
  const ScoobyPdfView({super.key});

  @override
  _ScoobyPdfViewState createState() => _ScoobyPdfViewState();
}

class _ScoobyPdfViewState extends State<ScoobyPdfView> {
  String? path;

  @override
  void initState() {
    super.initState();
    generatePDF();
  }

  Future<void> generatePDF() async {
    final pdf = pw.Document();
    final ByteData imageData = await rootBundle.load('assets/images/user.jpeg');
    final Uint8List imageUint8List = imageData.buffer.asUint8List();
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Padding(
            padding:pw. EdgeInsets.symmetric(horizontal: 16.w),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                ///scooby contact content
                pw.Row(
                  children: [
                    pw.Container(
                      width: 80.w,
                      height: 80.h,
                      decoration: const pw.BoxDecoration(
                        shape: pw.BoxShape.circle,
                      ),
                      child: pw.Center(child:pw.Image(pw.MemoryImage(imageUint8List), fit: pw.BoxFit.cover),),
                    ),
                    pw.SizedBox(
                      width: 20.w,
                    ),
                    pw.Expanded(
                      child: pw.Column(
                        children: [
                          pw.Center(child: pw.Text("MD. Sharif Ullah", style: pw.TextStyle(fontSize:14.sp, fontWeight: pw.FontWeight.bold),)),
                          pw.Center(child: pw.Text(textAlign: pw.TextAlign.center, "LinkedIn | +880131058975 | Medium | Sarif@gmail.com | gitHub", style: pw.TextStyle(fontSize: 12),)),

                        ],
                      ),
                    ),
                  ],
                ),
                pw.SizedBox(height:15.h,),
                ///widget with line
                pw.Row(
                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                  children: [
                    pw.Text("Skills", style: pw.TextStyle(fontSize: 12.sp, fontWeight: pw.FontWeight.bold, color:  PdfColors.blue,),),
                    pw.Expanded(
                      child: pw.Container(
                        height: 0.5.h,
                        width: 300.w,
                        color: PdfColors.black,
                      ),
                    )
                  ],
                ),
                pw.SizedBox(
                  height: 8.h,
                ),
                ///skills
                pw.Column(
                  children: [
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Padding(
                          padding: pw.EdgeInsets.only(top: 5.h),
                          child: pw.Container(
                            height: 5.h,
                            width: 5.w,
                            decoration:const pw.BoxDecoration(
                                color:  PdfColors.blue,
                                shape: pw.BoxShape.circle
                            ),
                          ),
                        ),
                        pw.SizedBox(width: 5.w,),
                        pw.Expanded(child: pw.Text("Flutter Framework | Dart | Flutter Animation| MobX | MVC | MVP  | BloC | GetX | Firebase | OOP", style: pw.TextStyle(fontSize: 10.sp),))
                      ],
                    ),
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Padding(
                          padding: pw.EdgeInsets.only(top: 5.h),
                          child:pw.Container(
                            height: 5.h,
                            width: 5.w,
                            decoration: const pw.BoxDecoration(
                                color:  PdfColors.blue,
                                shape: pw.BoxShape.circle
                            ),
                          ),
                        ),
                        pw.SizedBox(width: 5.w,),
                        pw.Expanded(child: pw.Text("NoSQL | SQL | Git | Google Map | Mapbox | GPS | Open Street View | Responsive Design",style: pw.TextStyle(fontSize: 10.sp),))
                      ],
                    ),
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Padding(
                          padding: pw.EdgeInsets.only(top: 5.h),
                          child: pw.Container(
                            height: 5.h,
                            width: 5.w,
                            decoration: const pw.BoxDecoration(
                                color: PdfColors.blue,
                                shape: pw.BoxShape.circle
                            ),
                          ),
                        ),
                        pw.SizedBox(width: 5.w,),
                        pw.Expanded(child: pw.Text("Performance Optimization | RESTful API Integration | Play Store Console", style: pw.TextStyle(fontSize: 10.sp),))
                      ],
                    ),
                  ],
                ),
                pw.SizedBox(
                  height: 15.h,
                ),

                ///Experience
                pw.Column(
                  children: [
                    ///widget with line
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.end,
                      children: [
                        pw.Text("Experience", style: pw.TextStyle(fontSize: 12.sp, fontWeight: pw.FontWeight.bold, color: PdfColors.blue,),),
                        pw.Expanded(
                          child: pw.Container(
                            height: 0.5.h,
                            width: 300.w,
                            color: PdfColors.black,
                          ),
                        )
                      ],
                    ),
                    pw.SizedBox(
                      height: 8.h,
                    ),
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Expanded(child: pw.Text("Junior Software Engineer", style: pw.TextStyle(fontSize: 10.sp, fontWeight: pw.FontWeight.bold),)),
                        pw.SizedBox(
                          width: 04.w,
                        ),
                        pw.Expanded(child: pw.Text("Bit Byte Technology Ltd", style: pw.TextStyle(fontSize: 10.sp, color: PdfColors.blueAccent),), ),
                        pw.SizedBox(
                          width: 04.w,
                        ),
                        pw.Expanded(child: pw.Text("Block, 1/1 North/South Rd,", style: pw.TextStyle(fontSize: 10.sp, ),)),
                        pw.SizedBox(
                          width: 04.w,
                        ),
                        pw.Expanded(child: pw.Text("05/2022 - Current", style: pw.TextStyle(fontSize: 10.sp, ),))
                      ],
                    ),
                    pw.SizedBox(height: 05.h,),
                    pw.Text("During my tenure at Bit Byte Technology Ltd, I served as a software engineer and played a key role in developing and maintaining various mobile applications, including Monarch Mart (Multi-Vendor E-commerce), BDESH (OTA),", style: pw.TextStyle(fontSize: 10.sp),),
                    pw.SizedBox(
                      height: 08.h,
                    ),
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Expanded(child: pw.Text("Mobile Application Trainer", style: pw.TextStyle(fontSize: 10.sp, fontWeight: pw.FontWeight.bold),)),
                        pw.SizedBox(
                          width: 04.w,
                        ),
                        pw.Expanded(child: pw.Text("Bit Byte Technology Ltd", style: pw.TextStyle(fontSize: 10.sp, color: PdfColors.blueAccent),), ),
                        pw.SizedBox(
                          width: 04.w,
                        ),
                        pw.Expanded(child: pw.Text("Block, 1/1 North/South Rd,", style: pw.TextStyle(fontSize: 10.sp, ),)),
                        pw.SizedBox(
                          width: 04.w,
                        ),
                        pw.Expanded(child: pw.Text("05/2022 - Current", style: pw.TextStyle(fontSize: 10.sp, ),))
                      ],
                    ),
                    pw.SizedBox(height: 05.h,),
                    pw.Text("During my tenure at Bit Byte Technology Ltd, I served as a software engineer and played a key role in developing and maintaining various mobile applications, including Monarch Mart (Multi-Vendor E-commerce), BDESH (OTA), Burgundy User & Driver, ", style: pw.TextStyle(fontSize: 10.sp),)

                  ],
                ),
                pw.SizedBox(
                  height: 15.h,
                ),
                ///Projects
                pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.end,
                      children: [
                        pw.Text("Projects", style: pw.TextStyle(fontSize: 12.sp, fontWeight: pw.FontWeight.bold, color:  PdfColors.blueAccent)),
                        pw.Expanded(
                          child: pw.Container(
                            height: 0.5.h,
                            width: 300.w,
                            color: PdfColors.black,
                          ),
                        )
                      ],
                    ),
                    pw.SizedBox(
                      height: 8.h,
                    ),
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Padding(
                          padding: pw.EdgeInsets.only(top: 5.h),
                          child: pw.Container(
                            height: 5.h,
                            width: 5.w,
                            decoration: const pw.BoxDecoration(
                                color:  PdfColors.blueAccent,
                                shape: pw.BoxShape.circle
                            ),
                          ),
                        ),
                        pw.SizedBox(width: 5.w,),
                        pw.Expanded(child: pw.Text("Monarch Mart (Multi-Vendor E-commerce Application)", style: pw.TextStyle(fontSize: 10.sp, fontWeight: pw.FontWeight.bold,  color:  PdfColors.blueAccent,),)),
                        pw.SizedBox(
                          height: 8.h,
                        ),

                      ],
                    ),
                    pw.SizedBox(
                      height: 8.h,
                    ),
                    pw.Text("Monarch Mart, a Multi-Vendor E-commerce Application like Daraz, was a project where I developed the entire mobile application using the Flutter framework. I was responsible for implementing key features to create a seamless shopping experience.", style: pw.TextStyle(fontSize: 10.sp),)
                    ,pw.SizedBox(
                      height: 8.h,
                    ),
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Padding(
                          padding: pw.EdgeInsets.only(top: 5.h),
                          child: pw.Container(
                            height: 5.h,
                            width: 5.w,
                            decoration: const pw.BoxDecoration(
                                color:  PdfColors.blueAccent,
                                shape: pw.BoxShape.circle
                            ),
                          ),
                        ),
                        pw.SizedBox(width: 5.w,),
                        pw.Expanded(child: pw.Text("Monarch Mart (Multi-Vendor E-commerce Application)", style: pw.TextStyle(fontSize: 10.sp, fontWeight: pw.FontWeight.bold,  color:  PdfColors.blueAccent,),)),pw.SizedBox(
                          height: 8.h,
                        ),
                      ],
                    ),
                    pw.SizedBox(
                      height: 8.h,
                    ),
                    pw.Text("Monarch Mart, a Multi-Vendor E-commerce Application like Daraz, was a project where I developed the entire mobile application using the Flutter framework. I was responsible for implementing key features to create a seamless shopping experience.", style: pw.TextStyle(fontSize: 10.sp),)

                  ],
                ),
                pw.SizedBox(
                  height: 15.h,
                ),
                ///Education
                pw.Column(
                  children: [
                    ///widget with line
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.end,
                      children: [
                        pw.Text("Education", style: pw.TextStyle(fontSize: 12.sp, fontWeight: pw.FontWeight.bold, color:  PdfColors.blueAccent),),
                        pw.Expanded(
                          child: pw.Container(
                            height: 0.5.h,
                            width: 300.w,
                            color: PdfColors.black,
                          ),
                        )
                      ],
                    ),
                    pw.SizedBox(
                      height: 8.h,
                    ),
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Expanded(child: pw.Text("Bachelor of Science", style: pw.TextStyle(fontSize: 10.sp, fontWeight: pw.FontWeight.bold),)),
                        pw.SizedBox(
                          width: 08.w,
                        ),
                        pw.Expanded(child: pw.Text("University Of Scholars", style: pw.TextStyle(fontSize: 10.sp, color: PdfColors.blueAccent),), ),
                        pw.SizedBox(
                          width: 08.w,
                        ),
                        pw.Expanded(child: pw.Text("40 Kemal Ataturk Ave, Dhaka 1213", style: pw.TextStyle(fontSize: 10.sp, ),)),
                        pw.SizedBox(
                          width: 08.w,
                        ),
                        pw.Expanded(child: pw.Text("3.77 - 2020", style: pw.TextStyle(fontSize: 10.sp, ),))
                      ],
                    ),
                    pw.SizedBox(height: 05.h,),
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Expanded(child: pw.Text("Higher Secondary School Certificate.", style: pw.TextStyle(fontSize: 10.sp, fontWeight: pw.FontWeight.bold),)),
                        pw.SizedBox(
                          width: 08.w,
                        ),
                        pw.Expanded(child: pw.Text("Noakhali Government College", style: pw.TextStyle(fontSize: 10.sp, color: PdfColors.blueAccent),), ),
                        pw.SizedBox(
                          width: 08.w,
                        ),
                        pw.Expanded(child: pw.Text("New College Road, noakhali, Maijdee 3800", style: pw.TextStyle(fontSize: 10.sp, ),)),
                        pw.SizedBox(
                          width: 08.w,
                        ),
                        pw.Expanded(child: pw.Text("4.20 - 2015", style: pw.TextStyle(fontSize: 10.sp, ),))
                      ],
                    ),
                    pw.SizedBox(height: 05.h,),
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Expanded(child: pw.Text("Secondary School Certificate.", style: pw.TextStyle(fontSize: 10.sp, fontWeight: pw.FontWeight.bold),)),
                        pw.SizedBox(
                          width: 08.w,
                        ),
                        pw.Expanded(child: pw.Text("Tanjimul Ummah Alim Madrasah", style: pw.TextStyle(fontSize: 10.sp, color: PdfColors.blueAccent),), ),
                        pw.SizedBox(
                          width: 08.w,
                        ),
                        pw.Expanded(child: pw.Text("House 2/A Road-29, Dhaka 1230", style: pw.TextStyle(fontSize: 10.sp, ),)),
                        pw.SizedBox(
                          width: 08.w,
                        ),
                        pw.Expanded(child: pw.Text("5.0 - 2012", style: pw.TextStyle(fontSize: 10.sp, ),))
                      ],
                    ),
                  ],
                ),
                pw.SizedBox(height:15.h,),

                ///Achievement
                pw.Column(
                  children: [
                    ///widget with line
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.end,
                      children: [
                        pw.Text("Programming Contest Perticpation", style: pw.TextStyle(fontSize: 12.sp, fontWeight: pw.FontWeight.bold, color:  PdfColors.blueAccent,),),
                        pw.Expanded(
                          child: pw.Container(
                            height: 0.5.h,
                            width: 300.w,
                            color: PdfColors.black,
                          ),
                        )
                      ],
                    ),
                    pw.SizedBox(
                      height: 8.h,
                    ),
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Padding(
                          padding: pw.EdgeInsets.only(top: 5.h),
                          child: pw.Container(
                            height: 5.h,
                            width: 5.w,
                            decoration:  const pw.BoxDecoration(
                                color:  PdfColors.blueAccent,
                                shape: pw.BoxShape.circle
                            ),
                          ),
                        ),
                        pw.SizedBox(width: 5.w,),
                        pw.Expanded(child: pw.Text("Regional Programming Contest NCPC (2017)", style: pw.TextStyle(fontSize: 10.sp),))
                      ],
                    ),
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Padding(
                          padding: pw.EdgeInsets.only(top: 5.h),
                          child: pw.Container(
                            height: 5.h,
                            width: 5.w,
                            decoration: const pw.BoxDecoration(
                                color:  PdfColors.blueAccent,
                                shape: pw.BoxShape.circle
                            ),
                          ),
                        ),
                        pw.SizedBox(width: 5.w,),
                        pw.Expanded(child: pw.Text("Pabna University of Science and Technology Programming)",style: pw.TextStyle(fontSize: 10.sp),))
                      ],
                    ),
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Padding(
                          padding: pw.EdgeInsets.only(top: 5.h),
                          child: pw.Container(
                            height: 5.h,
                            width: 5.w,
                            decoration: const pw.BoxDecoration(
                                color:  PdfColors.blueAccent,
                                shape: pw.BoxShape.circle
                            ),
                          ),
                        ),
                        pw.SizedBox(width: 5.w,),
                        pw.Expanded(child: pw.Text("Banglalion-Sub Inter University Programming Contest 2018)",style: pw.TextStyle(fontSize: 10.sp),))
                      ],
                    ),
                  ],
                ),
                pw.SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          );
        },
      ),
    );

    final output = await getTemporaryDirectory();
    final file = File("${output.path}/example.pdf");
    final bytes = await pdf.save();
    await file.writeAsBytes(bytes);
    setState(() {
      path = file.path;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Viewer'),
      ),
      body: Center(
        child: path != null
            ? PDFView(filePath: path)
            : const CircularProgressIndicator(),
      ),
    );
  }
}
