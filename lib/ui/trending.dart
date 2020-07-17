import 'package:flutter/material.dart';
import './HomePage.dart';

var _list = [
  "Games",
  "Sports",
  "Music",
  "News"
];
List<MaterialColor> list1 = [
  Colors.yellow,
  Colors.blue,
  Colors.orange,
  Colors.cyan,

];

class Trending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Trending", style: new TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: new Icon(Icons.supervised_user_circle, color: Colors.black,),
        actions: [
          new Icon(Icons.search, color: Colors.black,)
        ],
        backgroundColor: Colors.white,
      ),
      body: new Container(
          child : SingleChildScrollView(
            child: new Column(
              children: [
                Container(
                  height: 35,
                 // margin: EdgeInsets.all(15.0),
                  child: new ListView.builder(itemCount: _list.length , itemBuilder:(BuildContext context, int i){
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(40.0,10.0,40.0,10.0),
                      child: Container(
                        height: 30 ,
                        width: 70,
                        decoration: BoxDecoration(
                          color: list1.elementAt(i),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10.00)
                        ),
                        child : new Text(_list.elementAt(i))
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,),
                ),
                card1(),
                card1(),
                card1(),
              ],
            ),
          )
      ),
    );
  }
}
