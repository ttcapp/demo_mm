import 'package:flutter/material.dart';

class HomeWork extends StatefulWidget {
  const HomeWork({Key? key}) : super(key: key);

  @override
  _HomeWorkState createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {
  @override
  Widget build(BuildContext context) {


    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Home Work"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/images2.jpg"),
            fit: BoxFit.cover, colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2),
              BlendMode.dstATop)
          )
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: width*0.25,
                    width: width*0.25,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.pink,
                      ),
                      borderRadius: BorderRadius.circular(160),
                      image: DecorationImage(
                        image: AssetImage("assets/image/c.png"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("555k" , style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: width*0.055,
                              color: Colors.black
                            ),),
                            Text("Flowers"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text("555k" , style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width*0.055,
                                color: Colors.black
                            ),),
                            Text("Flowering"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text("555k" , style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width*0.055,
                                color: Colors.black
                            ),),
                            Text("Posts"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
