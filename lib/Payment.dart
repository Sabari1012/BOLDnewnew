import 'package:boltappapp/Checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() =>
    runApp(
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Payment(),
        )
    );

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.black,

        ),
        iconTheme: IconThemeData(color:Colors.black),


        leading: IconButton(icon: Icon(Icons.keyboard_backspace), onPressed: (){
          Navigator.pop(context);

        }),


      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5.0,vertical:20.0 ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>
            [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0,vertical:10.0 ),
                child: Text("Payment",style: TextStyle(fontSize: 20),textAlign: TextAlign.start,),
              ),

              SizedBox(
                height: 25,
              ),

              Center(child: Image.asset("assets/payment.jpg")),
              SizedBox(
                height: 25,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  Column(
                    children: [
                      Text("Subtotal",style: TextStyle(color: Colors.grey,fontSize: 20),),SizedBox(height: 8,),
                      Text("Discount",style: TextStyle(color: Colors.grey,fontSize: 20),),SizedBox(height: 8,),
                      Text("Shipping",style: TextStyle(color: Colors.grey,fontSize: 20),),SizedBox(height: 8,),
                      Text("Total",style: TextStyle(color: Colors.black,fontSize: 20),),SizedBox(height: 8,),

                    ],
                  ),
                  Column(
                    children:  [
                      Text("\$160.00",style: TextStyle(color: Colors.grey,fontSize: 20),),SizedBox(height: 8,),
                      Text("5%",style: TextStyle(color: Colors.grey,fontSize: 20),),SizedBox(height: 8,),
                      Text("\$10.00",style: TextStyle(color: Colors.grey,fontSize: 20),),SizedBox(height: 8,),
                      Text("\$162.00",style: TextStyle(color: Colors.black,fontSize: 20),),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: <Widget> [
                  SizedBox(
                    width: double.infinity,
                    height: 50,

                    child: FlatButton(


                        child: Text("Add Cart",style: TextStyle(color:Colors.blueAccent,fontSize: 20),
                        ),color: Colors.white,
                        onPressed: (){}
                    ),
                  ),
                  SizedBox(height: 14,),


                  SizedBox(
                    width:double.infinity,
                    height: 50,
                    child: RaisedButton(
                      elevation: 10.0,
                      textColor: Colors.white,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Checkout()));

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
                          child: Center(child: const Text("Checkout",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),
                        ),
                      ),),

                  ),
                ],
              ),
            ],
          ),
        ),
      ),







    );
  }
}
