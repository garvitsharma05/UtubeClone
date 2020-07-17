import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Home", style: new TextStyle(color: Colors.black),),
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
Widget card1(){
  return  Container(
    margin: EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
    height: 300,
    width: 480,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0)
    ),
    child: new Card(
      elevation: 5,
      child: new Column(
        children: [

          Expanded(
            child: new Image.asset('images/fireworks.JPG',
              height: 200,
              width: 480,
              fit: BoxFit.cover,
            ),
          ),
          new ListTile(
            title: new Text("Video Title, Lengthning of the Title for the \nIdea of Title placement",
                style : new TextStyle(fontWeight: FontWeight.bold,color: Colors.black, fontSize: 20)),
            subtitle: new Text("\nChannel Name      2.3k views"),
            contentPadding: EdgeInsets.all(5.0),
            trailing: new FlatButton.icon(onPressed: _user, icon: Icon(Icons.play_arrow), label: new Text("Play")

          )
          )],
      ),
    ),
  );
}
_user(){

}