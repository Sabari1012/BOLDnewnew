import 'package:boltappapp/homescreen.dart';
import 'package:boltappapp/signinscreen.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';


class Loginscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginscreen(),
      routes: <String,WidgetBuilder>{
        '/Home' : (context) => homescreen(),
      },
    );
  }
}


class loginscreen extends StatefulWidget {
  @override

  _loginscreenState createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  final formkey = GlobalKey<FormState>();
  final scaffoldkey = GlobalKey<ScaffoldState>();
  void validate(){
    if(formkey.currentState.validate()){
      scaffoldkey.currentState.showSnackBar(SnackBar(
        content: Text("yours Login Succesfully"),
      ));
      Navigator.pushNamed(context, '/Home');

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
                    Text('Login',style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 30
                    ),),

                    SizedBox(
                      height: 40,
                    ),
                    Form(

                      key: formkey,
                      child:Column(
                        children: [
                          TextFormField(
                            validator: MultiValidator(
                              [
                                RequiredValidator(errorText: "Please Enter the value"),
                                EmailValidator(errorText: "Not a Valid Email")
                              ]
                            ),

                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText:"Email",),minLines: 1,),
                          SizedBox(height:30),
                          TextFormField(
                              validator: (value) {if(value.isEmpty){
        return "Please enter the password ";
        }else if(value.length < 8){
                                return"Password should not exceed 8 character ";
                              }
        },
                              keyboardType: TextInputType.text,obscureText: _obscureText,
                              minLines: 1,
                              decoration: InputDecoration(
                                labelText:"Password",
                                suffixIcon: IconButton(icon: Icon(
                                    _obscureText ? Icons.visibility: Icons.visibility_off), onPressed:(){
                                  setState(() {
                                    _obscureText =!_obscureText;
                                  });
                                }),)
                          ),
                        ],
                      )
                    ),
                    SizedBox(height: 50,),
                    SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: RaisedButton(
                        elevation: 10.0,
                        textColor: Colors.white,
                        onPressed: (){
                        validate();

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
                    SizedBox(height: 20,
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children:<Widget>[

                        Text(
                          "Don't have an account ?",
                          style: TextStyle (color: Colors.grey,decoration: TextDecoration.underline),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Signinscreen() )
                          );
                          },
                          child: Text(" Sign Up",style: TextStyle(
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

