import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pavlova App Demo',
      home: buildHomePage('Strawberry Pavlova Recipe'),
    );
  }

  Widget buildHomePage(String title) {
    const titleText=Padding(padding:EdgeInsets.all(20),
      child: Text(
        'Strawberry Pavlove',
        style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,letterSpacing: 0.5),
      ),
    );
    const subtitle=Text(
      'Pavlova is a meringue-based dessert named after the Russian ballenire ''Anna Pavlova.'
          '\n Pavlova features a crips crust and soft,light inside topped with fruit and whipped cream.',
      textAlign: TextAlign.center,
      style: TextStyle(fontFamily:'Georgia',fontSize: 25 ),
    );
    var stars=Row(
      children:[
       Icon(Icons.star,color: Colors.green),
       Icon(Icons.star,color: Colors.green),
       Icon(Icons.star,color: Colors.green),
       const Icon(Icons.star,color: Colors.black),
       const Icon(Icons.star,color: Colors.black),
        ]
      );
    final ratings=Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          Text('170 Reviews',style: TextStyle(color: Colors.black,fontFamily:'Robato',fontSize: 20,fontWeight:FontWeight.w800,letterSpacing: 0.5),)
        ],
      ),
    );
    const descTextStyle=TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      height: 2,
      fontSize: 18
    );
    final IconsList=DefaultTextStyle.merge(
      style: descTextStyle,
        child:Container(
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          Column(
            children: [
              Icon(Icons.kitchen, color: Colors.green[500]),
              Text('Prep'),
              Text('25min'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.timer,color: Colors.green[500],),
              Text('Cook'),
              Text('1hr'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.restaurant,color: Colors.green[500],),
              Text('Feeds:'),
              Text('4-6'),
            ],
          ),
        ],

      ),
    ));

    final leftcolumn=Container(
      child: Column(
        children: [titleText, subtitle, ratings, IconsList,],
      ),
    );
    final mainImage = Image.asset(
      'Image/Strawberry.jpg'
    ); //added Image

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          height: 450,
          child: Card(
            child: Row(
              children: [
                SizedBox(
                  width:450,
                  child:leftcolumn,
                ),
                mainImage,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
