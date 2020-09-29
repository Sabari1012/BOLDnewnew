
import 'package:boltappapp/Payment.dart';
import 'package:flutter/material.dart';


class AddAddress extends StatefulWidget {
  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  final formkey= GlobalKey<FormState>();
  final scaffoldkey=GlobalKey<ScaffoldState>();
  void address(){
    if(formkey.currentState.validate()){
      scaffoldkey.currentState.showSnackBar(SnackBar(
        content: Text("yours Login Succesfully"),
      ));Navigator.push(context, MaterialPageRoute(builder: (context) =>Payment()));


    }else{
      scaffoldkey.currentState.showSnackBar(SnackBar(
        content: Text("Error in Login "),
      ));

    }

  }


  @override
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

        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: new Container(


              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 30.0),

              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(


                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[
                      Text('Create Address',style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 30
                      ),),

                      SizedBox(
                        height: 20,
                      ),
                      Form(
                          key: formkey,
                          child: Column(
                        children: [
                          TextFormField(
                            validator: (value) {if(value.isEmpty){
                              return "Please enter the Name ";
                            }else if(value.length < 8){
                              return"Name should not exceed 8 character ";
                            }
                            },
                            keyboardType: TextInputType.name,minLines: 1,

                            decoration: InputDecoration(
                              labelText:"Name",),

                          ),
                          SizedBox(height:8),
                          TextFormField(
                            validator: (value) {if(value.isEmpty){
                              return "Please enter the Address Lane";
                            }
                            },
                            keyboardType: TextInputType.text,minLines: 1,
                            decoration: InputDecoration(
                              labelText:"Addres Lane",),),
                          SizedBox(height:8),
                          TextFormField(
                              validator: (value) {if(value.isEmpty){
                                return "Please enter the City ";
                              }
                              },
                              keyboardType: TextInputType.text,minLines: 1,

                              decoration: InputDecoration(
                                labelText:"City",
                              )),
                          SizedBox(height:8),
                          TextFormField(
                            validator: (value) {if(value.isEmpty){
                              return "please enter the Postal Code ";
                            }else if(value.length < 6){
                              return"Postal Code should not exceed 6 digit ";
                            }
                            },

                            keyboardType: TextInputType.number,minLines: 1,
                            decoration: InputDecoration(

                              labelText:"Postal Code",),),
                          SizedBox(height:8),
                          TextFormField(
                            validator: (value) {if(value.isEmpty){
                              return "please enter the Phone Number ";
                            }else if(value.length < 6){
                              return"Phone No should not exceed 10 digit ";
                            }
                            },

                            keyboardType: TextInputType.number,minLines: 1,
                            decoration: InputDecoration(
                              labelText:"Phone Number",),),


                        ],
                      )),


                      SizedBox(height: 50,),

                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: RaisedButton(
                          elevation: 10.0,
                          textColor: Colors.white,
                          onPressed: () {
                           address();
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
                              child: Center(child: const Text("Add Address",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),
                            ),
                          ),
                        ),
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


