import 'package:flutter/material.dart';
import 'package:goviguru_mobile/UI/login.dart';
import 'package:goviguru_mobile/UI/Pinlogin.dart';

class Loginwithid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginWithId(),
    );
  }
}

class LoginWithId extends StatefulWidget {
  @override
   LoginwithidState createState() =>  LoginwithidState();
}

class  LoginwithidState extends State <LoginWithId> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.green[700],
        titleSpacing: 20,
          actions: <Widget>[
            
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              
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
                      padding: const EdgeInsets.symmetric(horizontal:30.0,vertical:80.0),
                      child: Form(
                        key: _formKey,
                        autovalidate: _autoValidate,
                    
                        child: Card(
                         elevation: 5.0,
                         
                          child: Padding(
                            
                            padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 50.0),
                            child: Column(
                              children: <Widget>[
                               
                                TextFormField(
                                   decoration: const InputDecoration(labelText: 'NIC'),
                                   
                                   keyboardType: TextInputType.text,
                   
                                ),
                                  
                   
                                SizedBox(height: 50.0,),
                               
                               ButtonTheme(
                                  minWidth: 200.0,
                                  height: 50.0,
                                 child: RaisedButton(
                                   child: Text("Login"),
                                   color: Colors.green[500],
                                  shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              textColor: Colors.white,
                                   onPressed: () {},
                                  splashColor: Colors.yellowAccent,


                                 ),
                               ),
                               SizedBox(height: 15.0,),
                                ButtonTheme(
                                  minWidth: 200.0,
                                  height: 50.0,
                                 child: RaisedButton(
                                   child: Text("Reset Mobile Number"),
                                   color: Colors.green[500],
                                  shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)
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
                      ),
                      
                    ),
                   
                  ],
                  ), 
              ],
            )
          ],
        ),
        
        );
        
  }
}