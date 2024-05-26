import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;


class WolfsRainPdfView extends StatefulWidget {
  const WolfsRainPdfView({super.key});

  @override
  _WolfsRainPdfViewState createState() => _WolfsRainPdfViewState();
}

class _WolfsRainPdfViewState extends State<WolfsRainPdfView> {
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
          return pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.start,
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Row(
                children: [
                  pw.Expanded(
                    flex: 4,
                    child: pw.Container(
                      color: PdfColors.blueGrey,
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.SizedBox(height: 40.h),
                          pw.Padding(
                            padding: pw.EdgeInsets.symmetric(horizontal: 20.w),
                            child:  pw.Container(
                              width: 150.w,
                              height: 130.h,
                              decoration: const pw.BoxDecoration(
                                shape: pw.BoxShape.circle,
                              ),
                              child: pw.Center(child:pw.Image(pw.MemoryImage(imageUint8List), fit: pw.BoxFit.cover),),
                            ),
                          ),
                          pw.SizedBox(
                            height: 20.h,
                          ),
                          pw.Padding(
                            padding:
                            pw.EdgeInsets.symmetric(horizontal: 20.w),
                            child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text(
                                  "Contact",
                                  style: pw.TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: pw.FontWeight.bold,
                                      color: PdfColors.white),
                                ),
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(bottom: 6),
                                  child: pw.Container(
                                    height: 3.h,
                                    width: 35.w,
                                    color: PdfColors.white,
                                  ),
                                ),
                                pw.Row(
                                  children: [
                                    //pw.Icon(PdfIcons.email_outlined, color: PdfColors.white, size: 10.sp,),
                                    pw.SizedBox(
                                      width: 3.w,
                                    ),
                                    pw.Expanded(
                                        child: pw.Text(
                                          //overflow: pw.TextOverflow.ellipsis,
                                          "claudia@gmail.com",
                                          style: pw.TextStyle(
                                              fontSize: 10.sp,
                                              color: PdfColors.white),
                                        ))
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    //pw.Icon(Icons.home, color: Colors.white, size: 10.sp,),
                                    pw.SizedBox(
                                      width: 3.w,
                                    ),
                                    pw.Expanded(
                                        child: pw.Text(
                                          //overflow: pw.TextOverflow.ellipsis,
                                          "Dhaka, Bangladesh",
                                          style: pw.TextStyle(
                                              fontSize: 10.sp,
                                              color: PdfColors.white),
                                        ))
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    //Icon(Icons.phone, color: Colors.white, size: 10.sp,),
                                    pw.SizedBox(
                                      width: 3.w,
                                    ),
                                    pw.Expanded(
                                        child: pw.Text(
                                          //overflow: TextOverflow.ellipsis,
                                          "+88018787654",
                                          style: pw.TextStyle(
                                              fontSize: 10.sp,
                                              color: PdfColors.white),
                                        ))
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    //Icon(Icons.corporate_fare, color: Colors.white, size: 10.sp,),
                                    pw.SizedBox(
                                      width: 3.w,
                                    ),
                                    pw.Expanded(
                                        child: pw.Text(
                                          //overflow: TextOverflow.ellipsis,
                                          "Claudia/linked.com",
                                          style: pw.TextStyle(
                                              fontSize: 10.sp,
                                              color: PdfColors.white),
                                        ))
                                  ],
                                ),
                                pw.SizedBox(height: 20),
                              ],
                            ),
                          ),
                          //WRSkillsContent(pdfWidget: pw.Page,),
                          pw.Padding(
                            padding:
                            const pw.EdgeInsets.symmetric(horizontal: 20.0),
                            child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text(
                                  "Skills",
                                  style: pw.TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: pw.FontWeight.bold,
                                      color: PdfColors.white),
                                ),
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(bottom: 6),
                                  child: pw.Container(
                                    height: 3.h,
                                    width: 35.w,
                                    color: PdfColors.white,
                                  ),
                                ),
                                //const PointerText(text: "Dart",color: Colors.white,),
                                pw.Row(
                                  children: [
                                    //pw.Icon(Icons.circle, size: 4.sp, color: PdfColors.black ,),
                                    pw.Container(
                                        height: 4,
                                        width: 4,
                                        decoration: const pw.BoxDecoration(
                                            color: PdfColors.white,
                                            shape: pw.BoxShape.circle)),
                                    pw.SizedBox(
                                      width: 5.w,
                                    ),
                                    pw.Expanded(
                                      child: pw.Text(
                                        textAlign: pw.TextAlign.start,
                                        "Dart",
                                        style: pw.TextStyle(
                                          fontSize: 10.sp,
                                          color: PdfColors.white,),
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    //pw.Icon(Icons.circle, size: 4.sp, color: PdfColors.black ,),
                                    pw.Container(
                                        height: 4,
                                        width: 4,
                                        decoration: const pw.BoxDecoration(
                                            color: PdfColors.white,
                                            shape: pw.BoxShape.circle)),
                                    pw.SizedBox(
                                      width: 5.w,
                                    ),
                                    pw.Expanded(
                                      child: pw.Text(
                                        textAlign: pw.TextAlign.start,
                                        "Flutter",
                                        style: pw.TextStyle(
                                          fontSize: 10.sp,
                                          color: PdfColors.white,),
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    //pw.Icon(Icons.circle, size: 4.sp, color: PdfColors.black ,),
                                    pw.Container(
                                        height: 4,
                                        width: 4,
                                        decoration: const pw.BoxDecoration(
                                            color: PdfColors.white,
                                            shape: pw.BoxShape.circle)),
                                    pw.SizedBox(
                                      width: 5.w,
                                    ),
                                    pw.Expanded(
                                      child: pw.Text(
                                        textAlign: pw.TextAlign.start,
                                        "Firebase",
                                        style: pw.TextStyle(
                                          fontSize: 10.sp,
                                          color: PdfColors.white,),
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    //pw.Icon(Icons.circle, size: 4.sp, color: PdfColors.black ,),
                                    pw.Container(
                                        height: 4,
                                        width: 4,
                                        decoration: const pw.BoxDecoration(
                                            color: PdfColors.white,
                                            shape: pw.BoxShape.circle)),
                                    pw.SizedBox(
                                      width: 5.w,
                                    ),
                                    pw.Expanded(
                                      child: pw.Text(
                                        textAlign: pw.TextAlign.start,
                                        "Google map",
                                        style: pw.TextStyle(
                                          fontSize: 10.sp,
                                          color: PdfColors.white,),
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    //pw.Icon(Icons.circle, size: 4.sp, color: PdfColors.black ,),
                                    pw.Container(
                                        height: 4,
                                        width: 4,
                                        decoration: const pw.BoxDecoration(
                                            color: PdfColors.white,
                                            shape: pw.BoxShape.circle)),
                                    pw.SizedBox(
                                      width: 5.w,
                                    ),
                                    pw.Expanded(
                                      child: pw.Text(
                                        textAlign: pw.TextAlign.start,
                                        "Java",
                                        style: pw.TextStyle(
                                          fontSize: 10.sp,
                                          color: PdfColors.white,),
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    //pw.Icon(Icons.circle, size: 4.sp, color: PdfColors.black ,),
                                    pw.Container(
                                        height: 4,
                                        width: 4,
                                        decoration: const pw.BoxDecoration(
                                            color: PdfColors.white,
                                            shape: pw.BoxShape.circle)),
                                    pw.SizedBox(
                                      width: 5.w,
                                    ),
                                    pw.Expanded(
                                      child: pw.Text(
                                        textAlign: pw.TextAlign.start,
                                        "C/C++",
                                        style: pw.TextStyle(
                                          fontSize: 10.sp,
                                          color: PdfColors.white,),
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    //pw.Icon(Icons.circle, size: 4.sp, color: PdfColors.black ,),
                                    pw.Container(
                                        height: 4,
                                        decoration: const pw.BoxDecoration(
                                            color: PdfColors.white,
                                            shape: pw.BoxShape.circle)),
                                    pw.SizedBox(
                                      width: 5.w,
                                    ),
                                    pw.Expanded(
                                      child: pw.Text(
                                        textAlign: pw.TextAlign.start,
                                        "Team Work",
                                        style: pw.TextStyle(
                                            fontSize: 10.sp,
                                            color: PdfColors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    //pw.Icon(Icons.circle, size: 4.sp, color: PdfColors.black ,),
                                    pw.Container(
                                        height: 4,
                                        width: 4,
                                        decoration: const pw.BoxDecoration(
                                            color: PdfColors.white,
                                            shape: pw.BoxShape.circle)),
                                    pw.SizedBox(
                                      width: 5.w,
                                    ),
                                    pw.Expanded(
                                      child: pw.Text(
                                        textAlign: pw.TextAlign.start,
                                        "Adaptability",
                                        style: pw.TextStyle(
                                          fontSize: 10.sp,
                                          color: PdfColors.white,),
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    //pw.Icon(Icons.circle, size: 4.sp, color: PdfColors.black ,),
                                    pw.Container(
                                        height: 4,
                                        width: 4,
                                        decoration: const pw.BoxDecoration(
                                            color: PdfColors.white,
                                            shape: pw.BoxShape.circle)),
                                    pw.SizedBox(
                                      width: 5.w,
                                    ),
                                    pw.Expanded(
                                      child: pw.Text(
                                        textAlign: pw.TextAlign.start,
                                        "Communication",
                                        style: pw.TextStyle(
                                          fontSize: 10.sp,
                                          color: PdfColors.white,),
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    //pw.Icon(Icons.circle, size: 4.sp, color: PdfColors.black ,),
                                    pw.Container(
                                        height: 4,
                                        decoration: const pw.BoxDecoration(
                                            color: PdfColors.white,
                                            shape: pw.BoxShape.circle)),
                                    pw.SizedBox(
                                      width: 5.w,
                                    ),
                                    pw.Expanded(
                                      child: pw.Text(
                                        textAlign: pw.TextAlign.start,
                                        "Git",
                                        style: pw.TextStyle(
                                            fontSize: 10.sp,
                                            color: PdfColors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                pw.SizedBox(height: 20),
                              ],
                            ),
                          ),
                          pw.Padding(
                            padding: const pw.EdgeInsets.symmetric(horizontal: 20.0),
                            child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text("Interests", style: pw.TextStyle(fontSize: 20.sp, fontWeight: pw.FontWeight.bold,color: PdfColors.white),),
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(bottom: 6),
                                  child: pw.Container(
                                    height: 3.h,
                                    width: 35.w,
                                    color: PdfColors.white,
                                  ),
                                ),
                                pw.Text(
                                  "Coding\nGaming\nFootball\nTravelling",
                                  style: pw.TextStyle(fontSize: 10.sp, color: PdfColors.white),
                                ),
                                pw.SizedBox(
                                  height:20,
                                ),
                              ],
                            ),
                          )
                          // const WRInterestsContent(),
                          // const WRLanguageContent(),
                        ],
                      ),
                    ),
                  ),
                  pw.Expanded(
                    flex: 7,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.only(left: 20.w),
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.SizedBox(
                            height: 20,
                          ),
                          //const DesignationContent(),
                          pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text("Claudia Alves", style: pw.TextStyle(fontSize: 22.sp, fontWeight: pw.FontWeight.bold),),
                              pw.Padding(
                                padding: pw.EdgeInsets.only(bottom: 4.h, top: 4.h),
                                child: pw.Container(
                                  height: 2.h,
                                  width: double.infinity,
                                  color: PdfColors.black,
                                ),
                              ),
                              pw.Text("Software Engineer", style: pw.TextStyle(fontSize: 18.sp, fontWeight: pw.FontWeight.bold),),
                            ],
                          ),
                          pw.SizedBox(
                            height: 20,
                          ),
                          //const WRAboutMeContent(),
                          pw.Padding(
                            padding: pw.EdgeInsets.only(right: 20.w),
                            child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text("About Me", style: pw.TextStyle(fontSize: 20.sp, fontWeight: pw.FontWeight.bold),),
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(bottom: 6),
                                  child: pw.Container(
                                    height: 3.h,
                                    width: 35.w,
                                    color: PdfColors.black,
                                  ),
                                ),
                                pw.Text(
                                  textAlign: pw.TextAlign.justify,
                                  "Lorem nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim a d minim veniam, quis nostrud exerci tation ullamcorper.",
                                  style: pw.TextStyle(fontSize: 10.sp),
                                ),
                                pw.SizedBox(
                                  height:20,
                                ),
                              ],
                            ),
                          ),
                          //const WRExperienceContent(),
                          pw.Padding(
                            padding: pw.EdgeInsets.only(right: 20.w),
                            child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text("Experience", style: pw.TextStyle(fontSize: 20.sp, fontWeight: pw.FontWeight.bold),),
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(bottom: 6),
                                  child: pw.Container(
                                    height: 3.h,
                                    width: 35.w,
                                    color: PdfColors.black,
                                  ),
                                ),
                                pw.Text(
                                  textAlign: pw.TextAlign.justify,
                                  "Software Engineer",
                                  style: pw.TextStyle(fontSize: 14.sp, fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Row(
                                  children: [
                                    pw.Expanded(
                                      child: pw.Text(
                                        //overflow: pw.TextOverflow.,
                                        textAlign: pw.TextAlign.justify,
                                        "Borcelle Agency",
                                        style: pw.TextStyle(fontSize: 12.sp, fontWeight:pw.FontWeight.bold),
                                      ),
                                    ),
                                    pw.Expanded(
                                      child: pw.Text(
                                        // overflow: pw.TextOverflow.ellipsis,
                                        textAlign: pw.TextAlign.justify,
                                        " (2022 - Present)",
                                        style: pw.TextStyle(fontSize: 10.sp, fontWeight: pw.FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Text(
                                  textAlign: pw.TextAlign.justify,
                                  "Lorem ipsumdf dolodr sidt adfmet, consectetuer adipiscing elit, sed diam nonummy tation ullamcorper.",
                                  style: pw.TextStyle(fontSize: 10.sp),
                                ),
                                pw.SizedBox(
                                  height:20,
                                ),
                                pw.Text(
                                  textAlign: pw.TextAlign.justify,
                                  "JR Software Engineer",
                                  style: pw.TextStyle(fontSize: 14.sp, fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Row(
                                  children: [
                                    pw.Expanded(
                                      child: pw.Text(
                                        //overflow: TextOverflow.ellipsis,
                                        textAlign: pw.TextAlign.justify,
                                        "Borcelle Agency",
                                        style: pw.TextStyle(fontSize: 12.sp, fontWeight: pw.FontWeight.bold),
                                      ),
                                    ),
                                    pw.Expanded(
                                      child: pw.Text(
                                        //overflow: pw.TextOverflow.ellipsis,
                                        textAlign: pw.TextAlign.justify,
                                        " (2021 - 2022)",
                                        style: pw.TextStyle(fontSize: 10.sp, fontWeight: pw.FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Text(
                                  textAlign: pw.TextAlign.justify,
                                  "Lorem ipsumdf dolodr sidt adfmet, consectetuer adipiscing elit, sed diam nonummy tation ullamcorper.",
                                  style: pw.TextStyle(fontSize: 10.sp),
                                ),
                                pw.SizedBox(
                                    height: 20.h
                                ),
                                pw.Text(
                                  textAlign: pw.TextAlign.justify,
                                  "Web Developer",
                                  style: pw.TextStyle(fontSize: 14.sp, fontWeight: pw.FontWeight.bold),
                                ),
                                pw.Row(
                                  children: [
                                    pw.Expanded(
                                      child: pw.Text(
                                        //overflow: pw.TextOverflow.ellipsis,
                                        textAlign: pw.TextAlign.justify,
                                        "Borcelle Agency",
                                        style:pw.TextStyle(fontSize: 12.sp, fontWeight: pw.FontWeight.bold),
                                      ),
                                    ),
                                    pw.Expanded(
                                      child: pw.Text(
                                        //overflow: pw.TextOverflow.ellipsis,
                                        textAlign: pw.TextAlign.justify,
                                        " (2019 - 2021)",
                                        style: pw.TextStyle(fontSize: 10.sp, fontWeight: pw.FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Text(
                                  textAlign: pw.TextAlign.justify,
                                  "Lorem ipsumdf dolodr sidt adfmet, consectetuer adipiscing elit, sed diam nonummy tation ullamcorper.",
                                  style: pw.TextStyle(fontSize: 10.sp),
                                ),
                                pw.SizedBox(
                                  height:20,
                                ),
                              ],
                            ),
                          ),
                          /// const WREducationContent(),
                          pw.Padding(
                            padding: pw.EdgeInsets.only(right: 20.w),
                            child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text("Education", style: pw.TextStyle(fontSize: 20.sp, fontWeight: pw.FontWeight.bold),),
                                pw.Padding(
                                  padding: const pw.EdgeInsets.only(bottom: 6),
                                  child: pw.Container(
                                    height: 3.h,
                                    width: 35.w,
                                    color: PdfColors.black,
                                  ),
                                ),

                                pw.Row(
                                  children: [
                                    pw.Expanded(
                                      child: pw.Text(
                                        //overflow: pw.TextOverflow.ellipsis,
                                        //textAlign: pw.TextAlign.justify,
                                        "Masterof Web Design",
                                        style: pw.TextStyle(fontSize: 12.sp, fontWeight: pw.FontWeight.bold),
                                      ),
                                    ),
                                    pw.Expanded(
                                      child: pw.Text(
                                        // overflow: TextOverflow.ellipsis,
                                        //textAlign: pw.TextAlign.justify,
                                        " (2021 - 2022)",
                                        style: pw.TextStyle(fontSize: 10.sp, fontWeight: pw.FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Text(
                                  textAlign: pw.TextAlign.justify,
                                  "Lorem ipsum,consec tetuer adipi scing elit nonummy.",
                                  style: pw.TextStyle(fontSize: 10.sp),
                                ),
                                pw.SizedBox(
                                  height: 20,
                                ),
                                pw.Row(
                                  children: [
                                    pw.Expanded(
                                      child: pw.Text(
                                        //textAlign: pw.TextAlign.justify,
                                        "Masterof Web Design",
                                        style: pw.TextStyle(fontSize: 12.sp, fontWeight: pw.FontWeight.bold),
                                      ),
                                    ),
                                    pw.Expanded(
                                      child: pw.Text(
                                        //textAlign: pw.TextAlign.justify,
                                        " (2021 - 2022)",
                                        style: pw.TextStyle(fontSize: 10.sp, fontWeight: pw.FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                pw.Text(
                                  textAlign: pw.TextAlign.justify,
                                  "Lorem ipsum,consec tetuer adipi scing elit nonummy.",
                                  style: pw.TextStyle(fontSize: 10.sp),
                                ),
                                pw.SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
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
