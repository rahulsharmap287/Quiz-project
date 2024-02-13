import 'package:flutter/material.dart';
import 'package:quizyy/Screens/aboutpage.dart';
import 'package:quizyy/Screens/Science/sciencepage.dart';
import 'package:quizyy/Screens/sharepage.dart';
import '../chemistry/Informationtechno/in.dart';
import '../chemistry/chemistry.dart';
import 'English/englishpage.dart';
import 'cprograme/c.dart';
import 'evs/evs.dart';
import 'math/math.dart';
import 'physics/physics.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Academic Session 2023-2024"),
        actions: [
          InkWell(
            child: Icon(
              Icons.share,
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Sharepage()));
            },
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
            child: Icon(Icons.error),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AboutUs()));
            },
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => EngQuizScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://media.istockphoto.com/id/1047570732/vector/english.jpg?s=2048x2048&w=is&k=20&c=G5WLxRtiVqKGbd9AfN0PQXOD1DljBC0aAiX2_QPUHjo="))),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "English",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MthQuizScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://media.istockphoto.com/id/1044168372/vector/mathematics.webp?s=2048x2048&w=is&k=20&c=xYaA5zzoTksaUA4A_qZYkZkEAzH4VmuIwLB7_EB0838="))),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("Math",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15))),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => (Science())));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2020/04/22/00/08/human-5075069_1280.jpg"))),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Science",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PhyQuizScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2013/07/12/17/48/einstein-152463_1280.png"))),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("Physics",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15))),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CheQuizScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2013/07/12/12/33/beaker-145920_1280.png"))),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Chemistry",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => EvsQuizScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2014/12/22/00/07/tree-576847_1280.png"))),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("Environment",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15))),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ItQuizScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://media.istockphoto.com/id/1190635179/vector/cyber-security-data-protection-business-concept-on-virtual-screen-shield-protect-icon-in.jpg?s=2048x2048&w=is&k=20&c=c9-gjskt_4-q1QPFJylXkv-UpzjGIGEwJeJfKRdKxaA="))),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Information Technology",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CQuizScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2017/03/30/13/34/c-2188446_1280.png"))),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("C Program",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15))),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
