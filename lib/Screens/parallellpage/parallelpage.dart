import 'package:flutter/material.dart';

class Secondp extends StatefulWidget {
  const Secondp({super.key});

  @override
  State<Secondp> createState() => _SecondpState();
}

class _SecondpState extends State<Secondp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Back to HomePage"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 20, left: 30),
            height: 700,
            width: 450,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.greenAccent),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  width: 350,
                  child: Center(
                      child: Text(
                    'Enhance Your skill',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF0E3311).withOpacity(0.1),
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SearchAnchor(
                      builder: (BuildContext context, SearchController controller) {
                        return SearchBar(
                          controller: controller,
                          padding: const MaterialStatePropertyAll<EdgeInsets>(
                              EdgeInsets.symmetric(horizontal: 16.0)),
                          onTap: () {
                            controller.openView();
                          },
                          onChanged: (_) {
                            controller.openView();
                          },
                          leading: const Icon(Icons.search),
                          trailing: <Widget>[
                          ],
                        );
                      }, suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                    return List<ListTile>.generate(5, (int index) {
                      final String item = 'item $index';
                      return ListTile(
                        title: Text(item),
                        onTap: () {
                          setState(() {
                            controller.closeView(item);
                          });
                        },
                      );
                    });
                  }),
                ),
                Text(
                  "",
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(onTap: (){
          },
            child: Container(margin: EdgeInsets.all(2),
              height: 50,
              width: 200,
              child: Center(
                  child: Text(
                "Go To Quizyy",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              )),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
