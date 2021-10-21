import 'package:flutter/material.dart';

String avaterSrc = "https://cdn.icon-icons.com/icons2/2643/PNG/512/male_boy_person_people_avatar_icon_159358.png";
String btnText1= "Butten one";

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Abdul Momin"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/images1.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black12.withOpacity(0.2), BlendMode.dstATop),
          ),
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
                       image: DecorationImage(
                         image: NetworkImage(avaterSrc),
                        ),
                         border: Border.all(width: 3,
                             color: Colors.pink),
                         borderRadius: BorderRadius.circular(160)
                     ),
                   ),
                 ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        Column(
                          children: [
                            Text("3,617" , style:
                            TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: width*0.055,
                              color: Colors.pinkAccent
                            ),),
                            Text("posts"),
                          ],
                        ),
                        SizedBox(
                          width: width*0.03,
                        ),
                        Column(
                          children: [
                            Text("33,61k" , style:
                            TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width*0.055,
                                color: Colors.pinkAccent
                            ),),
                            Text("Followrs"),
                          ],
                        ),
                        SizedBox(
                          width: width*0.03,
                        ),
                        Column(
                          children: [
                            Text("3,617" , style:
                            TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width*0.055,
                                color: Colors.pinkAccent
                            ),),
                            Text("Following"),
                          ],
                        ),
                        SizedBox(
                          width: width*0.03,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.black
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 4, left: 24, right: 24, bottom: 4
                              ),
                              child: Text("Massage"),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1,
                                    color: Colors.black
                                ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 4, left: 4, right: 4, bottom: 4
                              ),
                              child: Icon(Icons.account_circle_rounded,size: 17,),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
                onPressed:(){
                  setState(() {
                    btnText1="Butten click";
                  });
                },
                child: Text(btnText1)
            ),
          ],
        ),
      ),
    );
  }
}
