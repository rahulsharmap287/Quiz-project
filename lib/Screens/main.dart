import 'package:flutter/material.dart';
import 'package:quizyy/Screens/parallellpage/parallelpage.dart';
import 'package:quizyy/Screens/secondpage.dart';
import 'package:carousel_slider/carousel_slider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a blue toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mind Luster'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 200,
              width: 100,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: Colors.lightBlue,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.shutterstock.com/image-vector/3d-quiz-symbol-speaking-bubble-260nw-2318014431.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Rahul Sharma",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
            ),
            ListTile(
              title: const Text(
                'Whatsapp',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Facebook',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'LinkedIn',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Telegram',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Secondp()));
              },
              child: Container(
                margin: EdgeInsets.only(right: 53, left: 53),
                height: 245,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.shutterstock.com/image-vector/quiz-tag-3d-speech-bubble-260nw-2336839189.jpg"),
                        fit: BoxFit.cover)),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    height: 105,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color(0xFF0E3311).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 0.3)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "BUILD YOUR BRAIN",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        // SizedBox(
                        //   height: 15,
                        // ),
                        InkWell(
                          child: Container(
                            height: 40,
                            width: 100,
                            child: Center(child: Text("LEARNING")),
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Secondpage()));
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(height: 20,color: Colors.white,),SizedBox(height: 60,),
                  ListView(
                    shrinkWrap: true,
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage("https://www.shutterstock.com/shutterstock/photos/1954497907/display_1500/stock-photo-child-reading-a-comic-book-on-his-bed-1954497907.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage("https://www.shutterstock.com/shutterstock/photos/2284423939/display_1500/stock-vector-kyiv-ukraine-april-social-network-facebook-logos-facebook-messenger-reaction-icon-2284423939.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //3rd Image of Slider
                          Container(
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage("https://www.shutterstock.com/shutterstock/photos/1659982081/display_1500/stock-vector-website-design-of-checking-exams-and-surveys-evaluating-student-exam-results-and-learning-1659982081.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //4th Image of Slider
                          Container(
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage("https://www.shutterstock.com/shutterstock/photos/2239782725/display_1500/stock-vector--d-media-data-with-video-and-photo-gallery-library-searching-contents-media-files-document-2239782725.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //5th Image of Slider
                          Container(
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage("https://www.shutterstock.com/shutterstock/photos/2369430245/display_1500/stock-vector-annual-report-brochure-flyer-design-leaflet-presentation-book-cover-templates-2369430245.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                        ],

                        //Slider Container properties
                        options: CarouselOptions(
                          height: 180.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
