import 'package:flutter/material.dart';
import 'dart:core';
import 'dart:convert';
import 'package:goviguru_mobile/UI/selectcrop.dart';
import 'package:goviguru_mobile/Models/user.dart';
import 'package:http/http.dart' as http;
//import 'package:goviguru_mobile/Models/farm.dart';
//import 'package:goviguru_mobile/Models/crop.dart';


class AddFarm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Addfarm(),
    );
  }
}

class Addfarm extends StatefulWidget {
  @override
   AddfarmState createState() =>  AddfarmState();
}

class  AddfarmState extends State <Addfarm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Add Farm"),
        backgroundColor: Colors.green[700],
        titleSpacing: 20,
          actions: <Widget>[
            
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(Icons.add,size: 35.0),
            ),

          ],
      ),
        backgroundColor: Colors.white,
        body: Wrap(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(300.0)),
                  child: Container(
                    color: Colors.yellow[500],
                    height: 80.0,
                    width: 100.0,
                  ),
                ),
                Positioned(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(800.0),
                          bottomRight: Radius.circular(900.0),
                          
                        ),
                        child: Container(
                          color: Colors.green[600],
                          height: 100.0,
                          width: 50.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                  SizedBox(height: 25.0,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:40.0,vertical:50.0),
                      child: Form(
                        key: _formKey,
                        autovalidate: _autoValidate,
                    
                        child: Card(
                         elevation: 5.0,
                         
                          child: Padding(
                            
                            padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 40.0),
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  title: Text("Farm 01",
                                  style:TextStyle(fontWeight: FontWeight.w400,fontSize: 25.0,color: Colors.green[700]),
                                  textAlign: TextAlign.center,
                                  ),
  
                                ),

                                TextFormField(
                                   decoration: const InputDecoration(labelText: 'Farm Name'),
                                    //title: Text('Farms')
                                  ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
              child: Form(
                key: _formKey,
                autovalidate: _autoValidate,
                child: Column(
                  children: <Widget>[


                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Farm Name'),

                      validator: _validateFname,
                      onSaved: (String value) {

                      },
                      keyboardType: TextInputType.text,

                   
                                ),
                                  TextFormField(

                    ),
                    TextFormField(

                      decoration: const InputDecoration(labelText: 'Area Name'),
                      validator: _validateAname,
                      onSaved: (String value) {
                        },
                      keyboardType: TextInputType.text,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Area amount'),
                      validator: _validateAsq,
                      onSaved: (String value) {
                        //Farm.Asq = double.parse(value);

                      },
                      keyboardType: TextInputType.number,
                    ),


                                SizedBox(height: 20.0,),
                               
                               ButtonTheme(
                                  minWidth: 100.0,
                                  height: 50.0,
                                 child: RaisedButton(
                                   child: Text("Submit"),
                                   color: Colors.green[500],
                                  shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              ),
                              textColor: Colors.white,
                                   onPressed: () {},
                                  splashColor: Colors.yellowAccent,


                                 ),
                               ),

                              ],
                            ),
                          ),
                        ),
                      ]
                      
                     ),
                     ),
                  ), 
                     ),
            )
          ],
        ),
        ],
    ),
        ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.subdirectory_arrow_right),
          label: Text("Submit All"),
          backgroundColor: Colors.green[700],
          onPressed: (){},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        );
        
  }
 //Need to close all streams
  void dispose(){
    super.dispose();
  }
 //Functions for validation
   String _validateFname(String value){

                    SizedBox(
                      height: 5.0,
                    );
                    RaisedButton(
                      child: Text('Submit'),
                      //onPressed: _validateFarm,
                    );
                  ],
                ),
              ),
          ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.subdirectory_arrow_right),
        label: Text('Submit All'),
        backgroundColor: Colors.green[700],
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }


  //Need to close all streams
  void dispose(){
    super.dispose();
  }

  //Functions for validation
  String _validateFname(String value){

    if(value.isEmpty){
      return 'Please Enter farm Name';
    }else if(value.length<2){
      return 'Fill NameField';
    }else{
      return null;
    }
  }

  String _validateAname(String value){
    if(value.isEmpty){
      return 'Please enter Area Name';
    }else if(value.length<2){
      return 'Please fill Area Field';
    }else{
      return null;
    }
  }

  String _validateAsq(String value){
    if(value.isEmpty){
      return 'Please Enter Area sq';
    }else if(value.length<2){
      return 'Please Enter Total sq';
    }else{
      return null;
    }
  }


  void _validateFarm(){
    final form=_formKey.currentState;
    if(form.validate()){
      form.save();
    }else{
      setState(()=>_autoValidate=true);
    }
  }
}
