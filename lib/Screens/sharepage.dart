import 'package:flutter/material.dart';

class Sharepage extends StatefulWidget {
  const Sharepage({super.key});

  @override
  State<Sharepage> createState() => _SharepageState();
}

class _SharepageState extends State<Sharepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Share"),
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.white,
            child: Text(
              "Share with Us",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Container(
            height: 50,
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [SizedBox(height: 10,),
                Icon(Icons.facebook),
                Icon(Icons.share),
                Icon(Icons.shield_moon_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
