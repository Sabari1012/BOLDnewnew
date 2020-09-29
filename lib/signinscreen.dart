import 'package:boltappapp/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'homescreen.dart';

class Signinscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signinscreen(),
      routes: <String, WidgetBuilder>{
        '/home': (context) => homescreen()
      },
    );
  }
}
class signinscreen extends StatefulWidget {
  @override
  _signinscreenState createState() => _signinscreenState();
}

class _signinscreenState extends State<signinscreen> {
  final formkey= GlobalKey<FormState>();
  final scaffoldkey= GlobalKey<ScaffoldState>();
  void validated(){
    if(formkey.currentState.validate()){
      scaffoldkey.currentState.showSnackBar(SnackBar(
        content: Text("yours Singin Succesfully"),
      ));
      Navigator.pushNamed(context, '/home');

    }else{
      scaffoldkey.currentState.showSnackBar(SnackBar(
        content: Text("Error in Login "),
      ));

    }

  }


  @override
  bool _obscureText = true;
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.keyboard_backspace),
              color: Colors.black, onPressed: (){
            Navigator.pop(context);
              }),
        ),
        resizeToAvoidBottomPadding: false,
        body: SafeArea(
          child: new Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 50.0),
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('SignUp',style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 30
                      ),),

                      SizedBox(
                        height: 40,
                      ),
                      Form(
                        key: formkey,
                          child: Column(children: [
                        TextFormField(
                          validator: (value) {if(value.isEmpty){
                      return "Please enter the UserName";
                      }else if(value.length < 8){
                      return"UserName should not exceed 8 character";
                      }
                      },
                          keyboardType: TextInputType.name,

                          decoration: InputDecoration(
                            labelText:"Name",),

                        ),
                        SizedBox(height:30),
                        TextFormField(
                          validator: MultiValidator(
                            [
                              RequiredValidator(errorText: "Please Enter the Email"),
                              EmailValidator(errorText: "Not a Valid Email")
                            ]
                          ),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText:"Email",),),
                        SizedBox(height:30),
                        TextFormField(
                            validator: (value) {if(value.isEmpty){
                              return "Please enter the Password";
                            }else if(value.length < 8){
                              return"Password should not exceed 8 character";
                            }
                            },
                            keyboardType: TextInputType.text,obscureText: _obscureText,

                            decoration: InputDecoration(
                                labelText:"Password",
                                suffixIcon: IconButton(icon: Icon(
                                    _obscureText ? Icons.visibility: Icons.visibility_off), onPressed:(){
                                  setState(() {
                                    _obscureText =!_obscureText;
                                  });
                                }))
                        ),
                      ],)),
                      SizedBox(height: 50,),
                      SizedBox(
                        height: 55,
                        width: double.infinity,
                        child: RaisedButton(
                          elevation: 10.0,
                          textColor: Colors.white,
                          onPressed: () {
                            validated();
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
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                        children:<Widget>[

                          Text(
                            "Don't have an account ?",
                            style: TextStyle (color: Colors.grey,decoration: TextDecoration.underline),
                          ),
                          GestureDetector(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen()));
                          },
                            child: Text(" Sign In",style: TextStyle(
                                fontWeight: FontWeight.w600,fontSize: 20
                            ),),
                          ),

                        ],

                      ),


                    ],
                  ),





                ],
              )


          ),
        ),
      );
  }

}


