import 'package:flutter/material.dart';

class Selectcrop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Crop List";

    return MaterialApp(
        debugShowCheckedModeBanner: false,

        title: title,
        home: Scaffold(appBar: AppBar(
          title: Text("Select Crop"),
          textTheme: TextTheme(title: TextStyle(color: Colors.white,fontSize: 20)),

          backgroundColor: Colors.green[700],
          //setting the icon for the AppBar
          titleSpacing: 20,
          actions: <Widget>[
            
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(Icons.select_all,size: 35.0),
            ),

          ],
    //  elevation: 50.0,

        ),
            body: GridView.count(
              primary: false,
                padding: EdgeInsets.fromLTRB(10, 80, 10, 50),

                crossAxisCount: 3,
                mainAxisSpacing: 30.0,
                crossAxisSpacing: 5.0,


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
  const Choice(title: 'Potato', path: 'assets/potato.jpg'),
   const Choice(title: 'Carrot', path: 'assets/carrot.jpg'),
  const Choice(title: 'Pumpkin', path: 'assets/pumpkin.jpg'),
  const Choice(title: 'Tomato', path: 'assets/tomato.jpg'),
  const Choice(title: 'Onion', path: 'assets/onion.jpg'),
  const Choice(title: 'Chilli', path: 'assets/chilli.jpg'),
  const Choice(title: 'Banana', path: 'assets/banana.jpg'),
   const Choice(title: 'Watermelon', path: 'assets/watermellon.jpg'),
  const Choice(title: 'Pineapple', path: 'assets/pineapple.jpg'),
 

];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {

    final TextStyle textStyle = Theme.of(context).textTheme.title;
    return Card(
        elevation: 2.0,
        color: Colors.white,



        child: Center(child: InkWell(
          onTap: (){},
        child:Column(children: <Widget>[

          Expanded(child: Image.asset(choice.path,width: 100.0,height: 100.0,),flex: 4,),
          SizedBox(height: 0.0,),
          Expanded(child: Text(choice.title),flex: 1,),


        ],),
        ),
        )
    );
  }
}