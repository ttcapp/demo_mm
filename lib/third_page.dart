import 'package:demomm/home_work.dart';
import 'package:demomm/my_home_page.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}
String _email= "ab.mominbd@gmail.com";
String _password= "66646gml";
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
                controller: emailController,
                validator: (text){
                  if(text == null || text.isEmpty){
                    return "Email is empty";
                  }
                  else if(text != _email){
                    return "icuorrect Email";
                  }
                },
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
                controller: passwordCotroller,
                validator: (text){
                  if(text == null || text.isEmpty){
                    return "Password is Empty";
                  }
                  else if(text.length <=6){
                    return "Password should be asleast 6 character";
                  }
                  else if(text   != _password){
                    return " Password";
                  }
                },
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
                    if(emailController.text == _email){
                      if(passwordCotroller.text == _password){
                        Navigator.push(context, MaterialPageRoute(builder: (context)
                        =>HomeWork()));
                      }
                    }
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
