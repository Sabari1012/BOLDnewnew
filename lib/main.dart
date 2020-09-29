
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'loginscreen.dart';
import 'signinscreen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: welcomescreen(),
        routes: <String,WidgetBuilder>{
          '/Login': (context) => Loginscreen(),
          '/Signin': (context) => Signinscreen()
        }
    );
  }
}
class welcomescreen extends StatefulWidget {
  @override
  _welcomescreenState createState() => _welcomescreenState();
}

class _welcomescreenState extends State<welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Welcome to Bolt", style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 30
                  ),),
                  SizedBox(height: 20,),
                  Text("Explore Us",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,fontSize: 20
                    ),),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height /2.9,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image_logo.jpg')
                    )
                ),
              ),
              SizedBox(height: 80.0,),

              Column(
                children: <Widget>[
                  SizedBox(
                    height: 55,
                    width: 350,
                    child: RaisedButton(elevation: 10.0,

                      textColor: Colors.white,
                      onPressed: (){
                        Navigator.pushNamed(context, '/Login');
                      },
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(


                          gradient: LinearGradient(colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5)
                          ]),
                        ),

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: const Text("Log in",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),
                        ),
                      ),),
                  ),


                ],
              ),
              SizedBox(height: 20.0,),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 43,
                    width: 350,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/Signin');
                      },
                      child : Text("Signup", style: TextStyle(
                          fontSize: 18
                      ),),color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],)
      ),
      ),
    );
  }
}


