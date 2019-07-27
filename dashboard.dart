import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Grid List";

    return MaterialApp(
        debugShowCheckedModeBanner: false,

        title: title,
        home: Scaffold(appBar: AppBar(
          title: Text("Farm 01"),
          textTheme: TextTheme(title: TextStyle(color: Colors.white,fontSize: 30)),

          backgroundColor: Colors.green,
          //setting the icon for the AppBar
          titleSpacing: 20,
          actions: <Widget>[
            Icon(Icons.home,size: 45.0),

          ],
          elevation: 50.0,

        ),
            body: GridView.count(
              primary: false,
                padding: EdgeInsets.fromLTRB(20, 50, 20, 50),

                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 30.0,


                children: List.generate(choices.length, (index) {
                  return Center(
                    child: ChoiceCard(choice: choices[index]),

                  );
                }
                )
            )
        )
    );
  }
}


class Choice {
  const Choice({this.title, this.path});

  final String title;
  final String path;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Guidance', path: 'assets/guide.png'),
  const Choice(title: 'Broadcast', path: 'assets/antenna.png'),
  const Choice(title: 'Forum', path: 'assets/forum.png'),
  const Choice(title: 'Wallet', path: 'assets/wallet.png'),
  const Choice(title: 'Help', path: 'assets/help.png'),
  const Choice(title: 'Profile', path: 'assets/farmer.png'),

];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {

    final TextStyle textStyle = Theme.of(context).textTheme.title;
    return Card(
        elevation: 5.0,
        color: Colors.white,



        child: Center(child: InkWell(
          onTap: (){},
        child:Column(children: <Widget>[

          Expanded(child: Image.asset(choice.path,width: 80.0,height: 80.0,),flex: 3,),
         // SizedBox(height: 5.0,),
          Expanded(child: Text(choice.title),flex: 1,),


        ],),
        ),
        )
    );
  }
}