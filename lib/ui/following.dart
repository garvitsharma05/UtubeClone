import 'package:flutter/material.dart';
import './HomePage.dart';
class Following extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Following", style: new TextStyle(color: Colors.black),),
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
