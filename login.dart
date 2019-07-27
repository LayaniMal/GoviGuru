import 'package:flutter/material.dart';
import 'package:goviguru_mobile/Models/user.dart';
import 'package:goviguru_mobile/resource/login_helper.dart';
import 'package:goviguru_mobile/components/NewWidgetnew.dart';
import 'package:goviguru_mobile/components/Positionednew.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogTheme(),
    );
  }
}

class LogTheme extends StatefulWidget {
  @override
  _LogThemeState createState() => _LogThemeState();
}

class _LogThemeState extends State<LogTheme> {
  DateTime selectedDate = DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1950, 8),
        lastDate: DateTime(2100));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
      user User=user();

    return Scaffold(

        backgroundColor: Colors.white,
        body: Wrap(
          children: <Widget>[
            Stack(
              children: <Widget>[

                NewWidgetnew(),

                Positioned(),

                Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        //
                        Text(
                          "",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 75.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Registration',
                          style: TextStyle(
                              fontSize: 40.0, color: Colors.green[700]),
                        ),

                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                ' ',
                                style: TextStyle(
                                    fontSize: 10.0, color: Colors.black),
                              )
                            ],
                          ),

                          TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Name',

                                labelStyle: TextStyle(color: Colors.grey[500]),
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none),
                                icon: Icon(
                                  Icons.person,
                                  color: Colors.green[700],
                                )),
                            obscureText: false,
                            validator: _validateFname,
                            onSaved: (String value) {
                               User.name = value;
                            },
                          ),

                          TextFormField(
                            decoration: InputDecoration(
                                labelText: 'NIC',

                                labelStyle: TextStyle(color: Colors.grey[500]),
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none),
                                icon: Icon(
                                  Icons.credit_card,
                                  color: Colors.green[700],
                                )),
                            obscureText: false,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: 'NIC (Again)',

                                labelStyle: TextStyle(color: Colors.grey[500]),
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none),
                                icon: Icon(
                                  Icons.credit_card,
                                  color: Colors.green[700],
                                )),
                            obscureText: false,
                          ),

                          TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Mobile Number',

                                labelStyle: TextStyle(color: Colors.grey[500]),
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none),
                                icon: Icon(
                                  Icons.phone,
                                  color: Colors.green[700],
                                )),
                            obscureText: false,
                            onSaved: (String value) {
                               User.mobileNo = value;
                            },
                          ),
                          Row(
                            children: <Widget>[

                              Icon(Icons.calendar_today,color: Colors.green[700]),
                              Padding(padding: EdgeInsets.only(left: 15.0,right: 50.0),
                                  child: Text("${selectedDate.year.toString()}/${selectedDate.month.toString()}/${selectedDate.day.toString()}")),
                              ButtonTheme(
                                height: 20.0,
                                minWidth: 20.0,
                                buttonColor: Colors.green[500],

                                child:RaisedButton(

                                  onPressed: () => _selectDate(context),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Upandinaya"),
                                      Icon(Icons.arrow_drop_down)
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                          SizedBox(height: 40.0,),

                          ButtonTheme(
                            minWidth: 200.0,
                            height: 50.0,
                            child: RaisedButton(
                              color: Colors.green[700],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              ),

                              textColor: Colors.white,
                              child: new Text("Register"),
                              onPressed: ()async{
                                await login_helper.getResult(User);
                              },
                              splashColor: Colors.yellowAccent,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
String _validateFname(String value){
    if(value.isEmpty){
      return 'Please Enter farm Name';
    }else if(value.length<2){
      return 'Fill NameField';
    }else{
      return null;
    }
}
