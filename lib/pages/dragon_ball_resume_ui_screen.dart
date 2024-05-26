
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf_generate/pages/pdf_view/pdf_view.dart';

import 'content/designation_content.dart';
import 'content/education.dart';
import 'content/wolfs_rain_image_content.dart';
import 'content/wr_about_me_content.dart';
import 'content/wr_contact_content.dart';
import 'content/wr_experience_content.dart';
import 'content/wr_interests_content.dart';
import 'content/wr_language_content.dart';
import 'content/wr_skils_content.dart';

class WolfsRainScreen extends StatelessWidget {
  const WolfsRainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.blueGrey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                        WolfsRainImage(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        const WRContactContent(),
                        const WRSkillsContent(),
                        const WRInterestsContent(),
                        const WRLanguageContent(),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        DesignationContent(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        const WRAboutMeContent(),
                        const WRExperienceContent(),
                        const WREducationContent(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.endFloat ,
      floatingActionButton: FloatingActionButton(
        backgroundColor:  Colors.blueGrey,
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WolfsRainPdfView())
          );},child: const Icon(Icons.picture_as_pdf,color: Colors.white,),),
    );
  }
}