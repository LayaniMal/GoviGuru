  import 'package:flutter/material.dart';
import 'package:goviguru_mobile/UI/chat.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      
      color: Colors.yellow,
      home: DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            
          title: const Text('Forum'),
        ),
          body: TabBarView(
            children: [
              new Container(
                color: Colors.yellow[100],
              ),
              new Container(color: Colors.yellow[200],),
              new Container(
                color: Colors.yellow[300],
              ),
              
            ],
          ),
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(Icons.forum),
              ),
              Tab(
                icon: new Icon(Icons.email),
              ),
              Tab(
                icon: new Icon(Icons.edit),
              ),
              
            ],
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.yellow,
          ),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }
}