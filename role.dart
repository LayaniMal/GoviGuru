import 'package:flutter/material.dart';

class Role extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RoleTheme(),
    );
  }
}

class RoleTheme extends StatefulWidget {
  @override
  _RoleThemeState createState() => _RoleThemeState();
}

class _RoleThemeState extends State<RoleTheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    height: 100.0,
                    width: 150.0,
                  ),
                ),
                Positioned(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(500.0),
                          bottomRight: Radius.circular(600.0),
                        ),
                        child: Container(
                          color: Colors.green[600],
                          height: 150.0,
                          width: 65.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(height: 25.0),
                        Text(
                          "",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 120.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Choose',
                          style: TextStyle(
                              fontSize: 40.0, color: Colors.green[700]),
                        ),
                        Text(
                          ' Role',
                          style: TextStyle(
                              fontSize: 40.0, color: Colors.yellow[500]),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30.0, 30.0, 0.0, 0.0),
                      child: Column(
                        children: <Widget>[

                          Divider(
                            color: Colors.white,
                          ),
                          SizedBox(height: 15.0),

                          ButtonTheme(
                            height: 70.0,
                            minWidth: 160.0,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              ),
                              color: Colors.green,
                              textColor: Colors.white,
                              child: new Text("AI"),
                              onPressed: ()=>{},
                              splashColor: Colors.yellowAccent,
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                          ),
                          SizedBox(height: 10.0),

                          ButtonTheme(
                            height: 70.0,
                            minWidth: 160.0,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            ),

                              color: Colors.green,
                              textColor: Colors.white,
                              child: new Text("Farmer"),

                              onPressed: ()=>{},
                              splashColor: Colors.yellowAccent,
                            ),
                          ),
                          Divider(
                            color: Colors.white,
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
