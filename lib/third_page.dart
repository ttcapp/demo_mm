import 'dart:html';

import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

final _formKey= GlobalKey<FormFieldState>();
TextEditingController emailController= TextEditingController();
TextEditingController passwordCotroller= TextEditingController();


class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {

//globle variable
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool passVisi= true;
//globle variable

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: Text("Third Page"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.only(
            top: h*0.08, left: w*0.04,
              right: w*0.04, bottom: h*0.08
          ),
          child: Column(
            children: [
              Text("Log In", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: EdgeInsets.all(8),
                  focusColor: Colors.blue,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  suffixIcon: Icon(Icons.attach_email, color: Colors.blue,),
                ),
              ),
              SizedBox(
                height: 30,
                width: 30,
              ),
              TextFormField(
                obscureText: passVisi,
                decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: EdgeInsets.all(8),
                  focusColor: Colors.blue,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  suffixIcon: InkWell(
                    onTap: (){
                      setState(() {
                        if(passVisi==true)
                          passVisi=false;
                        else
                          passVisi=true;
                      });
                    },
                      child: Icon(Icons.remove_red_eye, color: Colors.blue,)),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue
                  ),
                  onPressed: (){
                  },
                  child: Text("Log In", style: TextStyle(fontSize: 20),)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
