import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("About Us"),backgroundColor: Colors.deepPurple,
    ),
      body: Column(
        children: [
          Text(
            "This Quizy App is an Educational Websites Focused on Students ,offering high-quality study materials and tests paper for these preparing for CBSE Exams And various Entrance tests."
            " The platform is the result of comprehnsive Survey Conduct over the recent of Years to Comprehenced Student challanges and needs. It provides tailored NCERT Books based Study Materials and tests . We "
            "Also offer NCERT Solution And Books Fot class 1-12 , Such as Mathematics , English , Hindi ,Science , Social Study                                "
            "1.  Our Platform Offers NCERT Solutions And NCERT Books for A Wide Array  of Subject , Serving as s valuable asset for Academic excellence "
            "2.  For the academic year 2023-24 , we  have comprehnsive NCERT Solution Available for all classes "
            "3.  NCERT Books are in both Hindi and English Medium , Covering essential subject like English , Hindi , math, and More . ",
            style: TextStyle(fontWeight: FontWeight.bold,),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 50,
            width: double.infinity,
            child: Text(
              "Help and Feedback",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
          ),
          Container(
            height: 50,
            width: double.infinity,
            child: Text(
              "Contact with Us",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
          ),
        ],
      ),
    );
  }
}
