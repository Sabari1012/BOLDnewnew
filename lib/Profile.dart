import 'package:boltappapp/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:form_field_validator/form_field_validator.dart';

void main() =>
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile(),
    ));
class Profile extends StatefulWidget {


  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final formkey =GlobalKey<FormState>();
  final scaffoldkey = GlobalKey<ScaffoldState>();
  void profile(){
    if(formkey.currentState.validate()){
      scaffoldkey.currentState.showSnackBar(SnackBar(
        content: Text("Add Profile Succesfully"),
      ));
    Navigator.push(context, MaterialPageRoute(builder: (context)=>homescreen()));
    }else{
      scaffoldkey.currentState.showSnackBar(SnackBar(
        content: Text("Error update "),
      ));

    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,elevation: 0,
        leading: IconButton(icon: Icon(Icons.keyboard_backspace),
            color: Colors.black, onPressed: (){
          Navigator.pop(context);

            }),
      ),
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: SafeArea(

          child: new Container(


              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20.0),

              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(


                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[
                      Text('Profile',style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 30
                      ),),
                      SizedBox(
                        height: 30,
                      ),
                      Form(
                          key: formkey,
                          child: Column(children: [
                        TextFormField(
                          validator: (value) {if(value.isEmpty){
                            return "Please enter the Password";
                          }else if(value.length < 8){
                            return"Name should not exceed 8 character";
                          }
                          },

                          keyboardType: TextInputType.text,minLines: 1,
                          decoration: InputDecoration(
                            labelText:"Name",),),
                        SizedBox(height:10),
                        TextFormField(
                            validator: (value) {if(value.isEmpty){
                              return "Please enter the Address Lane";
                            }
                            },
                            keyboardType: TextInputType.text,minLines: 1,
                            decoration: InputDecoration(
                              labelText:"Address Lane",
                            )),
                        SizedBox(height:10),
                        TextFormField(
                            validator: (value) {if(value.isEmpty){
                              return "Please enter the City";
                            }
                            },
                            keyboardType: TextInputType.text,minLines: 1,
                            decoration: InputDecoration(
                              labelText:"City",
                            )),
                        SizedBox(height:10),
                        TextFormField( validator: (value) {if(value.isEmpty){
                          return "Please enter the gender";
                        }else if(value.length < 4){
                          return"genter should not exceed 4 character";
                        }
                        },
                            keyboardType: TextInputType.text,minLines: 1,

                            decoration: InputDecoration(
                              labelText:"Gender",
                            )),
                        SizedBox(height:10),
                        TextFormField(
                          validator: MultiValidator([
                            RequiredValidator(errorText: "Please Enter the Email"),
                            EmailValidator(errorText: "Not a Valid Email")
                          ]),
                            keyboardType: TextInputType.emailAddress,minLines: 1,

                            decoration: InputDecoration(
                              labelText:"Email",
                            )),
                        SizedBox(height:10),
                        TextFormField(
                            validator: (value) {if(value.isEmpty){
                              return "Please enter the Password";
                            }else if(value.length < 10){
                              return"Phone Number should not exceed 10 digit";
                            }
                            },
                            keyboardType: TextInputType.number,minLines: 1,
                            decoration: InputDecoration(

                              labelText:"Phone Number",
                            )),

                      ],)),
                      SizedBox(height: 30,),

                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: RaisedButton(
                          elevation: 10.0,
                          textColor: Colors.white,
                          onPressed: (){
                           profile();

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
                              child: Center(child: const Text("Add Profile",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),
                            ),
                          ),),
                      ),
                    ],
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}

