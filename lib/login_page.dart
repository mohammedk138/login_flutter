import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final passwordController = TextEditingController();
  final password2Controller = TextEditingController();
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/bg.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Image.asset( "assets/images/logo_2.png", width: 90,),//Text("MyKolo", style: TextStyle(color: Colors.black87),),
            leading: IconButton(icon: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black,),),),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            actions: [
              Center(child: Text("Skip Here", style: TextStyle(color: Colors.black87, fontSize: 15),)),
              SizedBox(width: 30,)
            ],),
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: ListView(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Set Password", style: TextStyle(fontSize: 29, fontWeight: FontWeight.w700),),
              SizedBox(height: 7,),
              Text("Require information to account creations", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),),
              SizedBox(height: 30,),
              TextField(
                controller: passwordController,
                obscureText: status?true:false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(70.0) ),
                  suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        status=!status;
                      });
                    },
                    icon: Icon(status?Icons.visibility_off:Icons.visibility),//visibility_off
                  ),
                  labelText: "Password",
                  //errorText: _validate ? ERROR_LABEL_TEXT : null,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black38,
                      width: 1.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black38,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: password2Controller,
                obscureText: status?true:false,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        status=!status;
                      });
                    },
                    icon: Icon(status?Icons.visibility_off:Icons.visibility),//visibility_off
                  ),
                  labelText: "Repeat Password",
                  //errorText: _validate ? ERROR_LABEL_TEXT : null,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black38,
                      width: 1.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black38,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(
                  height: 7,
                  width: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 7,
                  width: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 7,
                  width: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.blue,
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 7,
                  width: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 7,
                  width: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 10,),
              ],),
              SizedBox(height: 40,),
              RaisedButton(
                onPressed: (){},
                child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Text("Continue", style: TextStyle(color: Colors.white, fontSize: 15),),
                ),
                color: Colors.black87,
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0) ),
              ),
              SizedBox(height: 40,),
              Text("Already have an Account?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
              SizedBox(height: 20,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("LOGIN", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.red),),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_forward_ios, size: 16, color: Colors.red)
                ],
              ),
            ],),
          ),
        ),
      ],
    );
  }
}