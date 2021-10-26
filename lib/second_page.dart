import 'package:flutter/material.dart';

String avater = "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg";

double conHeight=52;
double conWidth=52;

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Column(
        children: [
          InkWell(
            onDoubleTap: (){
            conHeight=200;
            conWidth=200;
          },
           onTap: (){
           setState(() {
             conHeight=200;
             conWidth=200;
           });
           },
            child: AnimatedContainer(
              height: conHeight,
              width: conWidth,
              duration: Duration(milliseconds: 110),

              child: Image.network(avater),
          ),
          ),
        ],
      ),
    );
  }
}

